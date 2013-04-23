var fs = require('fs-extra'),
		walker = require('walker'),
		_ = require('underscore'),
		path = require('path'),
//isWindows = process.platform === 'win32',
//dirSplitter = isWindows ? '\\' : '/',
		ENV = {
			DEV: 'development',
			PRO: 'production'
		},
		config = {
			root: './',
			scriptsRoot: './resources/scripts/',
			fileEncoding: 'utf8',
			// development | production
			env: ENV.DEV,
			//自动覆写module的id，和依赖
			alwaysAutoRewriteIdAndDep: true,
			globalNamespace: 'dl',
			defineAsGlobal: true
		},
		customConfigPath = 'config.json',
		customConfig;

//读取config.json配置文件
_.extend(config, fs.readJsonSync(customConfigPath));

var scriptsRoot = path.resolve(__dirname, config.scriptsRoot),
		scriptsRootLen = scriptsRoot.length;
walker(scriptsRoot)
		.on('file', function(file, stat){
			//只需要 .js 文件
			var fileName = file.match(/(.+)\.js$/);
			if(!fileName) return;
			var moduleId = fileName[1].substr(scriptsRootLen),
					moduleIdStr = '"' + moduleId + '"';
			//if(moduleId.indexOf(dirSplitter) !== 0) moduleId = dirSplitter + moduleId;
			fs.readFile(file, config.fileEncoding, function(err, data){
				var deps = [], depsStr,
						findRequire = data.match(/require\(.*\)/g);
				if(findRequire){
					findRequire.forEach(function(require){
						//"require('../a')" -> "../a"
						var requireStr = require.substring(8, require.length - 1).trim();
						deps.push(requireStr.substring(1, requireStr.length - 1));
					});
				}
				depsStr = JSON.stringify(deps);

				data = data.replace(/([^\s]*)define\(\s*(.*?)[\s,]*function/, function(holeMatch, prefix, idAndDeps){
					if(idAndDeps && !config.alwaysAutoRewriteIdAndDep){
						idAndDeps = idAndDeps.split(',');
						//最多也就是两个数组
						if(idAndDeps.length > 2) return holeMatch;
						idAndDeps.forEach(function(token){
							token = token.trim();
							if(!token) return;
							if(token.indexOf('[') == 0){
								depsStr = token;
							}else{
								moduleIdStr = token;
							}
						});
					}
					prefix = config.defineAsGlobal ? '' : config.globalNamespace + '.';
					return prefix + 'define(' + moduleIdStr + ', ' + depsStr + ', ' + 'function';
				});

				//console.log(data);
				fs.outputFile(file, data, function(err){
					if(err && config.env == ENV.DEV) console.log('error: ' + err);
				});
			});
		})
		.on('error', function(er, entry, stat){
			console.log(er);
			console.log(entry);
			console.log(stat);
		});
