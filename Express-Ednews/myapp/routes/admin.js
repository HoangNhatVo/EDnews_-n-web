var express = require('express');
var router = express.Router();

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.render('adminLayout/index',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/dang-bai',(rep,res,next)=>{
res.render('adminLayout/PageCreatenew',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/thong-tin-tai-khoan',(rep,res,next)=>{
  res.render('adminLayout/PageInforUser',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
  });
router.get('/bai-viet-dang-cho',(rep,res,next)=>{
  res.render('adminLayout/PageDraft',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/bai-viet-cho-xuat-ban',(rep,res,next)=>{
  res.render('adminLayout/PageWaitRelease',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
  });
router.get('/bai-viet-da-xuat-ban',(rep,res,next)=>{
    res.render('adminLayout/PageRelease',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/bai-viet-bi-tu-choi',(rep,res,next)=>{
  res.render('adminLayout/PageDecline',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/quan-ly-tai-khoan',(rep,res,next)=>{
  res.render('adminLayout/PageManager',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
module.exports = router;
