var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var exphbs  = require('express-handlebars');
var indexRouter = require('./routes/index');
var adminRouter = require('./routes/admin');
var app = express();
var moment = require('moment');


var bodyParser = require('body-parser');
var Passport = require('passport');
var flash = require('connect-flash');
var localStrategy = require('passport-local').Strategy;
var session = require('express-session');
var bCrypt = require('bcrypt');
require('./MiddleWares/passport')(Passport);


// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.engine('.hbs',exphbs({
  defaultLayout:'main',
  layoutsDir: path.join(__dirname,'views/layout'),
  partialsDir:path.join(__dirname,'views/partial'),
  extname:'.hbs',
  helpers: {
    format: val => {
      return moment(val).format('L');
    },
  }

}));
app.set('view engine', '.hbs');


app.use(bodyParser.urlencoded({extended: true}));
app.use(session({secret: "mysecret", resave: true, saveUninitialized: true, 
    cookie:{
      maxAge: 1000*60*3
    }}));
app.use(Passport.initialize());
app.use(Passport.session());
app.use(flash());


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(require('./MiddleWares/locals.mdw'));
app.use('/admin', adminRouter);
app.use('/', indexRouter);

app.use((req, res, next) => {
  res.render('404', { layout: false });
});

app.use((error, req, res, next) => {
  res.render('error', {
    layout: false,
    message: error.message,
    error:error
  })
});

// error handler
// app.use(function(err, req, res, next) {
//   // set locals, only providing error in development
//   res.locals.message = err.message;
//   res.locals.error = req.app.get('env') === 'development' ? err : {};

//   // render the error page
//   res.status(err.status || 500);
//   res.render('error');
// });

module.exports = app;
