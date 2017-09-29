var gulp = require('gulp');
var sass = require('gulp-sass');
var sourcemaps = require('gulp-sourcemaps');
var autoprefixer = require('gulp-autoprefixer');
var cleanCss = require('gulp-clean-css');
var rename = require('gulp-rename');
var coffee = require('gulp-coffee');
var browserSync = require('browser-sync').create();
var include = require('gulp-include');
var uglyfly = require('gulp-uglyfly');

gulp.task('hello', function() {
	console.log('Hello');
});

gulp.task('sass', function() {
	return gulp.src('scss/main.scss')
		.pipe(sourcemaps.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(autoprefixer())
		//.pipe(cleanCss())
		.pipe(sourcemaps.write('./'))
		.pipe(gulp.dest('./css/'))
		/*
		.pipe(browserSync.reload({
			stream: true
		}));
		*/
});

gulp.task('minifyCss', function() {
	return gulp.src('css/main.css')
	.pipe(sourcemaps.init())
	.pipe(cleanCss())
	.pipe(rename({
		suffix: '.min'
	}))
	.pipe(sourcemaps.write('./'))
	.pipe(gulp.dest('./css/'))
	.pipe(browserSync.reload({
		stream: true
	}));
});

gulp.task('coffee', function() {
	return gulp.src('coffee/main.coffee')
	.pipe(sourcemaps.init())
	.pipe(coffee().on('error', console.log))
	.pipe(sourcemaps.write('./'))
	.pipe(gulp.dest('coffee/components/'))
	/*
	.pipe(browserSync.reload({
		stream: true
	}));
	*/
});

gulp.task('scripts', function() {
	return gulp.src('coffee/components.js')
	.pipe(sourcemaps.init())
	.pipe(include()).on('error', console.log)
	.pipe(uglyfly())
	.pipe(rename('main.min.js'))
	.pipe(sourcemaps.write('./'))
	.pipe(gulp.dest('./js/'))
	.pipe(browserSync.reload({
		stream: true
	}));
});


gulp.task('browserSync', function(){
	browserSync.init({
		/*
		server: {
			baseDir: './'
		}
		*/
		proxy: 'localhost/city-dent.pl/'
	});
});

gulp.task('default', ['browserSync', 'sass'], function() {
    gulp.watch('scss/**/*.scss', ['sass']);
    gulp.watch('css/**/*.css', ['minifyCss']);
    gulp.watch('coffee/**/*.coffee', ['coffee']);
    gulp.watch('coffee/components/*.js', ['scripts']);
    gulp.watch('pages/*.xsl', browserSync.reload);
    gulp.watch('utilities/*.xsl', browserSync.reload);
    gulp.watch('index.html', browserSync.reload);
});
