gulp = require 'gulp'
tasks = require('require-dir')('./tasks')
config = require('./config.json')

gulp.task 'default', ['sass', 'coffee']

gulp.task 'watch', ['sass', 'coffee'], ->
  gulp.watch "#{config.assetsPath}/#{config.scss.folder}/*.scss", ['sass']
  gulp.watch "#{config.assetsPath}/#{config.coffee.folder}/*.coffee", ['coffee']
