module.exports = function(grunt) {
	grunt.loadNpmTasks('grunt-contrib-coffee')
	grunt.loadNpmTasks('grunt-contrib-concat')
	grunt.loadNpmTasks('grunt-contrib-connect')
	grunt.loadNpmTasks('grunt-contrib-pug')
	grunt.loadNpmTasks('grunt-contrib-sass')
	grunt.loadNpmTasks('grunt-contrib-uglify')
	grunt.loadNpmTasks('grunt-contrib-watch')
	grunt.initConfig({
		pkg: grunt.file.readJSON('package.json'),
		sass: {
			dist: {
				files: [{
	        expand: true,
	        cwd: 'sass',
	        src: ['styles.scss'],
	        dest: 'css',
	        ext: '.css'
				}]
			}
		},
		coffee: {
			compile: {
				files: {
					'js/scripts.js': 'coffee/scripts.coffee'
				},
				options: {
					sourceMap: true
				},
			}
		},
		pug: {
			compile: {
				files: {
					'index.html': 'index.pug'
				},
				options: {
					data: {
						debug: true
					}
				},
			}
		},
		watch: {
			scripts: {
				files: ['sass/*.scss', 'coffee/*.coffee', '*.pug'],
				tasks: ['sass', 'coffee', 'pug'],
			}
		},
		connect: {
			server: {
				options: {
	        port: 9000
	      }
	    }
	  }
	})
	grunt.registerTask('build', ['sass', 'coffee', 'pug'])
	grunt.registerTask('default', ['connect:server', 'watch'])
}