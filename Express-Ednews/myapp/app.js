var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var bodyParser = require('body-parser')
var exphbs  = require('express-handlebars');
var indexRouter = require('./routes/index');
var adminRouter = require('./routes/admin');
var app = express();
var moment = require('moment');
var express_handlebars_sections = require('express-handlebars-sections');




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
    remove:val=>{
      return val.replace("#","");
    },
   section:express_handlebars_sections() 
  }

}));
app.set('view engine', '.hbs');

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

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())

app.use(function (req, res) {
  res.setHeader('Content-Type', 'text/plain')
  res.write('you posted:\n')
  res.end(JSON.stringify(req.body, null, 2))
})

module.exports = app;
