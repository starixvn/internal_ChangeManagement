var gulp = require('gulp');
var sass = require('gulp-sass');

// compile task
gulp.task('sass', function () {
    // gulp.src('public/themes/gitmike/sass/application.scss')
    //     .pipe(sass().on('error', swallowError))
    //     .pipe(gulp.dest(function (f) {
    //         return f.base;
    //     }));
    gulp.src('public/themes/gitmike/sass/application.scss')
        .pipe(sass({outputStyle: 'compressed'}).on('error', swallowError))
        .pipe(gulp.dest('public/themes/gitmike/stylesheets'))
});

//watch for changes
gulp.task('default', function () {
    gulp.watch('public/themes/gitmike/sass/application.scss', ['sass']);
});

// skip if error occured
function swallowError(error) {
    console.log(error.toString())
    this.emit('end')
}