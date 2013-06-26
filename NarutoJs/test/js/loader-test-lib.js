;(function(exports){
	var loader = {};
	var config = {

	};
	var modules = {};

	var extend = function(a, b){
		for(var key in b){
			if(b.hasOwnProperty(key)){
				a[key] = b[key];
			}
		}
	}

	var path = {
		join: function(path1, path2){
			if(path2[0] === '/') return path2;
			//直接以字母开头，就是当前目录：'a/b/c' => './a/b/c'
			if(path2[0] !== '.') path2 = './' + path2;
			path1 = path1.replace(/\/([^\/]*)$/, '/');

			var path_arr1 = path1.split('/');
			var path_arr2 = path2.split('/');

			for(var i= 0, len = path_arr2.length; i<len; i++){
				var entry = path_arr2[i];
				if(entry === '.'){
					path_arr1.pop();
				}else if(entry === '..'){
					path_arr1.pop();
				}
			}
		}
	};

	var require = function(path){

	}

	var useRequire = function(path){

	}

	var defineRequire = function(path){

	}

	var config = function(conf){
		extend(config, conf);
	}

	var define = function(moduleName, deps, cb){
		var moduleNameType = typeof moduleName,
			depsType = typeof deps,
			cbType = typeof cb;
		if(moduleNameType == 'function'){
			cb = moduleName;
			moduleName = deps = undefined;
		}else if(moduleNameType == 'string'){
			if(depsType == 'function'){
				cb = depsType;
				deps = undefined;
			}
		}else if(moduleNameType == 'array'){
			deps = moduleName;
			cb = deps;
			moduleName = undefined;
		}
	}

	var use = function(cb){
		cb(useRequire);
	}

	loader.config = config;
	loader.define = define;
	loader.use = use;
	exports.loader = loader;
})(this);