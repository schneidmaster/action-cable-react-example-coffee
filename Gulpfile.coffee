gulp    = require('gulp')
del     = require('del')
rename  = require('gulp-rename')
webpack = require('webpack-stream')
copy    = require('gulp-copy')
connect = require('gulp-connect')

gulp.task 'clean', ->
  del(['dist/**/*'])
 
gulp.task 'webpack', ['clean'], ->
  gulp.src('index.coffee')
    .pipe(webpack(require('./webpack.config.coffee')))
    .pipe(rename('production.js'))
    .pipe(gulp.dest('built'))


gulp.task 'copy', ->
  gulp.src('index.html')
    .pipe(copy('built'))

gulp.task 'watch', ->
  gulp.watch ['./*.coffee'], (event) ->
    gulp.src(event.path).pipe(connect.reload())

  gulp.watch ['./*.coffee'], ['default']

gulp.task 'connect', ->
  connect.server
    root: ['built']
    port: 9010
    livereload:
      port: 32834
    connect:
      redirect: false

gulp.task 'default', ['clean', 'webpack', 'copy']
gulp.task 'serve', ['default', 'connect', 'watch']
