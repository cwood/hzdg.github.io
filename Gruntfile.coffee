path = require 'path'

module.exports = (grunt) ->
  _ = grunt.util._

  # Project configuration.
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    coffee:
      compile:
        files: [
          expand: true
          cwd: 'assets/app/coffee/'
          src: ['**/*.coffee']
          dest: 'assets/app/js/'
          ext: '.js'
        ]
    less:
      compile:
        files:
          'assets/app/css/main.css': 'assets/app/less/main.less'
    modernizr:
      devFile: 'remote'
      outputFile: 'assets/modernizr/modernizr.js'
      files: [
        'assets/**/*.{js,css,scss,less}'
        '!node_modules/**/*'
        '!lib/cache/**/*'
      ]
    csso:
      dist:
        files:
          'assets/app/css/main.min.css': ['assets/app/css/main.css']
    imagemin:
      dist:
        options:
          optimizationLevel: 7
          progressive: true
        files: [
          expand: true
          cwd: 'assets/app/images/'
          src: '{,*/}*.{png,jpg,jpeg}'
          dest: 'assets/app/images/'
        ]
    svgmin:
      dist:
        files: [
          expand: true
          cwd: 'assets/app/images/'
          src: '{,*/}*.svg'
          dest: 'assets/app/images/'
        ]
    jekyll:
      server:
        server: true
        server_port: 4000
        exclude: ['node_modules']
        watch: true
        trace: true
    watch:
      options:
        atBegin: true
      coffee:
        files: ['assets/app/**/*.coffee']
        tasks: ['coffee']
      less:
        files: ['assets/app/less/**/*.less']
        tasks: ['less']
      csso:
        files: ['assets/app/css/main.css']
        tasks: ['csso']
      # jekyll:
      #   files: ['_posts/**/*.md', '_layout/*.html', '_includes/*.html', 'index.html']
      #   tasks: ['jekyll:server']
    concurrent:
      target:
        tasks: ['jekyll:server', 'watch']
        options:
          logConcurrentOutput: true

  # Load grunt plugins
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-csso'
  grunt.loadNpmTasks 'grunt-modernizr'
  grunt.loadNpmTasks 'grunt-svgmin'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-imagemin'
  grunt.loadNpmTasks 'grunt-svgmin'
  grunt.loadNpmTasks 'grunt-concurrent'
  grunt.loadNpmTasks 'grunt-jekyll'

  # Define tasks.
  grunt.registerTask 'serve', ['concurrent:target']
  grunt.registerTask 'build', ['recess', 'coffee', 'modernizr', 'imagemin', 'csso', 'svgmin']
  grunt.registerTask 'default', ['serve']
