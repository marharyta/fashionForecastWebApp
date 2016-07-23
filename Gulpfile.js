var gulp		= require('gulp'),
	sass		= require('gulp-sass'),
	compass		= require('gulp-compass'),
	webserver	= require('gulp-webserver');

var sourcePaths = {
	styles: ['sass/**/*.sass', 'sass/**/*.scss']
}
var distPaths = {
	styles: 'css'
};
var server = {
	host: '0.0.0.0',
	port: '9000'
}

gulp.task('styles', function() {
	gulp.src(sourcePaths.styles)
		.pipe(compass({
			config_file:	'./config.rb',
			css:			distPaths.styles
		}))
		.pipe(sass().on('error', sass.logError))
});

gulp.task('watch',function() {
	gulp.watch(sourcePaths.styles,['styles']);
});

gulp.task('webserver', function() {
	gulp.src('.')
		.pipe(webserver({
			livereload: {
				enable: true,
				filter: function(fileName){
					if (fileName.match(/.scss$/) || fileName.match(/.sass$/)){
						// Don't livereload when sass files are changed, the compiled .css will be enough
						return false;
					}
					else{
						return true;
					}
				}
			},
			open:		true,
			host:		server.host,
			port:		server.port
		}));
});

gulp.task('serve', ['watch', 'webserver']);