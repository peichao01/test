module.exports = function(grunt) {

	grunt.initConfig({

		uglify: {
			build: {
				//src: 'src/myfile.js',
				src: 'src/myfile.js',
				dest: 'build/myfile.min.js'
			}
		},

		concat: {
			options: { separator: ';' },
			bar: {
				src: ['src/bb.js', 'src/bbb.js'],
				//src: 'src/bb*.js',
				dest: 'build/b.js'
			}
		},

		foo: {
			target1: {
				name: 'target1'
			},
			target2: {
				name: 'target2'
			}
		}

	});

	// Load the plugin
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-concat');

	// Default task(s)
	grunt.registerTask('default', ['uglify']);

	grunt.registerTask('foo',
						 'optional description',
						function(arg1,arg2){
							console.log(arg1);
							console.log(arg2);
						});
	
	grunt.registerTask('concat',function(){
		
	});

	grunt.registerMultiTask('foo', function(){
		grunt.log.writeln(this.target);
		grunt.log.writeln(this.data.name);
	});

}
