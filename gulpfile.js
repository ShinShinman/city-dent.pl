var gulp = require('gulp');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps = require('gulp-sourcemaps');
var cleanCss = require('gulp-clean-css');
var rename = require('gulp-rename');
var browserSync = require('browser-sync').create();
const relpace = require('gulp-replace');
var coffee = require('gulp-coffee');
var include = require('gulp-include');
const terser = require('gulp-terser');

const packageInfo = require('./package.json');

sass.compiler = require('node-sass');

function hello(yyy) {
	console.log ('Hello')
	return yyy()
}

function styles() {
	return gulp.src('./scss/main.scss')
		.pipe(sourcemaps.init())
		.pipe(sass().on('error', sass.logError))
		.pipe(autoprefixer())
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./css'))
		.pipe(cleanCss())
		.pipe(rename({ suffix: '.min' }))
		// .pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./css'))
		// .pipe(browserSync.reload())
		// .pipe(browserSync.stream({match: './css/main.css'}))
		// .pipe(browserSync.stream())
}

function coffeeScript() {
	return gulp.src('./coffee/main.coffee')
		.pipe(sourcemaps.init())
		.pipe(coffee().on('error', console.log))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./coffee/components'))
}

function scripts() {
	return gulp.src('./coffee/components.js')
		.pipe(sourcemaps.init())
		.pipe(include().on('error', console.log))
		.pipe(terser())
		.pipe(rename('main.min.js'))
		.pipe(sourcemaps.write('.'))
		.pipe(gulp.dest('./js'))
		// .pipe(browserSync.reload({ stream: true }))
		.pipe(browserSync.stream())
}

// var cbString = new Date().getTime().toString().slice(-6);
var cbString = packageInfo.version;
function cacheBust() {
	console.log('%cAktualna wersja: ' + cbString + ', ' + packageInfo.description, 'color: lightpink');
	return gulp.src('./utilities/master.xsl')
		.pipe(relpace(/v=(\d+\.*)+/g, 'v=' + cbString))
		.pipe(gulp.dest('./utilities'));
}

function bs() {
	browserSync.init({
		proxy: 'localhost/city-dent/'
	});
}

function watchFiles() {
	bs();
	gulp.watch(['./scss/**/*.scss'],
		gulp.series(styles, function reloading(done) {
			browserSync.reload();
			done();
		})
	);
	gulp.watch(['./coffee/**/*.coffee'],
		gulp.series(coffeeScript, scripts)
	);
}

exports.hello = hello;
exports.cacheBust = cacheBust;
exports.default = gulp.series(
	coffeeScript,
	gulp.parallel(styles, scripts, cacheBust),
	watchFiles
);
