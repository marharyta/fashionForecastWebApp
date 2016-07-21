var gulp	= require('gulp');
var sass	= require('gulp-sass');
var compass	= require('gulp-compass');

gulp.task('styles', function() {
	gulp.src('sass/**/*.sass')
		.pipe(compass({
			config_file: './config.rb',
			css: 'css',
			sass: 'sass'
		}))
		.pipe(sass().on('error', sass.logError))
});

gulp.task('default',function() {
	gulp.watch('sass/**/*.sass',['styles']);
});