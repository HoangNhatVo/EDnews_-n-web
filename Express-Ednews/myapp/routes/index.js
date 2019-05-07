var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index',
  {slick:'/javascripts/js/slick/slick.css',
  slicktheme:'/javascripts/js/slick/slick-theme.css',
  srcslick:'/javascripts/js/slick/slick.min.js',
  css:'/stylesheets/index.css',
  style:'/stylesheets/style.css'});
});
router.get('/kinhdoanh',function(req,res,next){
 res.render('Category',{category:'kinh doanh'});
});
router.get('/kinhdoanh/tai-chinh',function(req,res,next){
  res.render('Single_Category',{category:'Kinh doanh',singleCategory:'Tài chính'});
 });
 router.get('/kinhdoanh/bat-dong-san',function(req,res,next){
  res.render('Single_Category',{category:'Kinh doanh',singleCategory:'Bất động sản'});
 });
 router.get('/lien-he', function(req, res, next) {
  res.render('Contact',{css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
});

router.get('/thethao',function(req,res,next){
  res.render('Category',{category:'Thể thao',css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
 });

 router.get('/thethao/bong-da',function(req,res,next){
  res.render('Single_Category',{category:'Thể thao',singleCategory:'Bóng đá',css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
 });
 router.get('/thethao/the-thao-the-gioi',function(req,res,next){
  res.render('Single_Category',{category:'Thể thao',singleCategory:'Thể thao thế giới',css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
 });
 

 router.get('/thethao/the-thao-the-gioi/toc-do-lam-chu-cuoc-dua',function(req,res,next){
  res.render('Single_Post',{category:'Thể thao',singleCategory:'Thể thao thế giới',css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
 });

router.get('/dangnhap',function(req,res,next){
res.render('Login',{layout:false,css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
});
router.get('/dangky',function(req,res,next){
  res.render('Register',{layout:false,css:'/stylesheets/index.css',style:'/stylesheets/style.css'});
  });
module.exports = router;
