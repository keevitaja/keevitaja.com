var gulp = require('gulp');
var compass = require('gulp-compass');
var uglify = require('gulp-uglify');
var autoprefixer = require('gulp-autoprefixer');
var notify = require('gulp-notify');
var plumber = require('gulp-plumber');

gulp.task('css', function() {
    gulp.src('./_sass/**/*.scss')
        .pipe(plumber())
        .pipe(compass({
            config_file: './config.rb',
            css: 'css',
            sass: '_sass'
        }))
        .pipe(autoprefixer())
        .pipe(gulp.dest('./css'))
        .pipe(notify('Compiled css files'));
});

gulp.task('js', function() {
    gulp.src('./_js/**/*.js')
        .pipe(plumber())
        .pipe(uglify())
        .pipe(gulp.dest('./js'));
});

gulp.task('copy', function() {
    gulp.src([
        './bower_components/highlight.js/build/highlight.pack.js'
    ])
    .pipe(gulp.dest('./js'));
});

gulp.task('jekyll', function (gulpCallBack){
    var spawn = require('child_process').spawn;
    var jekyll = spawn('jekyll', ['build'], {stdio: 'inherit'});

    jekyll.on('exit', function(code) {
        gulpCallBack(code === 0 ? null : 'ERROR: Jekyll process exited with code: '+code);
    });

    gulp.src('').pipe(notify('Compiled html files'));
});

gulp.task('watch', function() {
    gulp.watch(['./_sass/**/*.scss'], ['css']);
    gulp.watch(['./_js/**/*.js'], ['js']);
    gulp.watch([
        './**/*.html',
        './**/*.md',
        './css/**/*.css',
        './js/**/*.js',
        '!./public/**/*'
    ], ['jekyll']);
});

gulp.task('default', ['copy', 'css', 'js', 'jekyll', 'watch']);