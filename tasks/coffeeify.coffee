gulp = require 'gulp'
coffeeify = require 'gulp-coffeeify'
notify = require 'gulp-notify'
config = require '../config.json'


gulp.task 'coffee', ->
  gulp.src "#{config.assetsPath}/#{config.coffee.folder}/*.coffee"
    .pipe coffeeify()
    .pipe notify 'Coffee Compiled'
    .pipe gulp.dest "#{config.distPath}/#{config.coffee.outputFolder}"
