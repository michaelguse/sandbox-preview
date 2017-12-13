var gulp          = require('gulp'),
  concat          = require('gulp-concat'),
  compass         = require('gulp-compass'),
  fileInclude     = require('gulp-file-include'),
  server          = require('gulp-server-livereload'),
  nunjucksRender  = require('gulp-nunjucks-render'),
  path            = require('path'),
  fs              = require('file-system'),
  gzip            = require('gulp-gzip'),
  imagemin        = require('gulp-imagemin'),
  pngquant        = require('imagemin-pngquant');

var jsFiles = [
  'src/js/**/*.js',
  'src/js/main.js',
  ],
  sassFiles = 'src/scss/**/*.scss',
  fontFiles = [
    'src/fonts/**',
    'node_modules/slick-carousel/slick/fonts/**'
  ],
  htmlFiles= [
    'html/*.html',
    'html/partials/*.html'
  ];

// STYLES
gulp.task('styles', function() {
  return gulp
    .src(sassFiles)
    .pipe(compass({
      css: 'html/css',
      font: 'html/css/fonts',
      sass: 'src/scss',
      image: 'html/images'
    }))
    .pipe(gulp.dest('html/css'));
});

// FONTS
gulp.task('fonts', function() {
  return gulp
    .src(fontFiles)
    .pipe(gulp.dest('html/css/fonts'));
});

// SCRIPTS
gulp.task('scripts', function() {
  return gulp
    .src(jsFiles)
    .pipe(concat('main.js'))
    .pipe(gulp.dest('html/js'))
});

// IMAGES
gulp.task('images', function() {
  return gulp.src('src/images/**/*.{jpg,jpeg,gif,svg,png}')
    .pipe(imagemin({
      progressive: true,
      use: [pngquant({speed: 10})]
    }))
    .pipe(gulp.dest('html/images'));
});

// HTML BUILD
gulp.task('html', function() {
  return gulp.src('src/pages/**/*.+(html|njk)')
  .pipe(nunjucksRender({
      path: ['src/templates']
    }))
  .pipe(gulp.dest('html'))
});

// DEV SERVER
gulp.task('server', function() {
  gulp.src('html')
    .pipe(server({
      livereload: true,
      open: true
    }));
});

// WATCH TASK
gulp.task('watch', function(event) {
  gulp.watch(jsFiles, ['scripts']);
  gulp.watch(sassFiles, ['styles']);
  gulp.watch('html/*.html', ['html']);
});

// BUILD TASK
gulp.task('build', ['scripts', 'styles', 'fonts', 'html', 'images']);

gulp.task('default', ['build', 'watch', 'server'])
