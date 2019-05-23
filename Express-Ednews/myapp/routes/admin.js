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
  res.render('adminLayout/PageManagerUser',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-chuyen-muc',(rep,res,next)=>{
  res.render('adminLayout/PageListCat',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc',(rep,res,next)=>{
  res.render('adminLayout/PageEditCat',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-chuyen-muc/them-chuyen-muc',(rep,res,next)=>{
  res.render('adminLayout/PageAddcat',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-tag',(rep,res,next)=>{
  res.render('adminLayout/PageListTag',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-tag/chinh-sua-tag',(rep,res,next)=>{
  res.render('adminLayout/PageEditTag',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
router.get('/danh-sach-tag/them-tag',(rep,res,next)=>{
  res.render('adminLayout/PageAddTag',{css:'/stylesheets/admin.css',style:'/stylesheets/sb-admin.css'});
});
module.exports = router;
