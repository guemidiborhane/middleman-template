gulp = require 'gulp'
sass = require 'gulp-sass'
autoprefixer = require 'gulp-autoprefixer'
notify = require 'gulp-notify'
config = require '../config.json'


gulp.task 'sass', ->
  gulp.src "#{config.assetsPath}/#{config.scss.folder}/*.scss"
    .pipe sass()
    .pipe autoprefixer config.scss.autoprefixer.options
    .pipe notify 'Sass compiled'
    .pipe gulp.dest "#{config.distPath}/#{config.scss.outputFolder}"
