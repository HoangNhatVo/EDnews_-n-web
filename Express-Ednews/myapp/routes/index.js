var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
/* GET home page. */
router.get('/', async (req, res,next) => {
  
  try {
    var Feature = await singlepostModel.getFeaturePost();
    var New = await singlepostModel.getNewPost();
    var Today = await singlepostModel.getToDayPost();
    var ChinhTriCat = await singlepostModel.getPostfromCategories('chinhtri');
    var BongdaCat = await singlepostModel.getPostfromCategories('bongda');
    var ThoiTrang= await singlepostModel.getPostfromCategories('fashion');
    var TaiChinh = await singlepostModel.getPostfromCategories('taichinh');
    var Showbiz = await singlepostModel.getPostfromCategories('showbiz');
    var Smartphone = await singlepostModel.getPostfromCategories('smartphone');
    res.render('index',
      {
        slick: '/javascripts/js/slick/slick.css',
        slicktheme: '/javascripts/js/slick/slick-theme.css',
        srcslick: '/javascripts/js/slick/slick.min.js',
        css: '/stylesheets/index.css',
        style: '/stylesheets/style.css',
        Featurepost: Feature.slice(0,2),
        Newpost: New.slice(0,6),
        ToDaypost: Today,
        ChinhTriCat:ChinhTriCat,
        BongdaCat:BongdaCat,
        ThoiTrang:ThoiTrang,
        TaiChinh:TaiChinh,
        Showbiz:Showbiz,
        Smartphone:Smartphone
      });
  } catch(err){
    next();
  };
});
router.get('/lien-he', function (req, res, next) {
  res.render('Contact', { css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
});
router.get('/dangnhap', function (req, res, next) {
  res.render('Login', { layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
});
router.get('/dangky', function (req, res, next) {
  res.render('Register', { layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
});
router.get('/:TenCM',async (req, res)=> {
  var NameCats=req.params.TenCM;
  try{
    var Feature = await singlepostModel.getFeaturePost();
    var NameCat= await CategoriesModel.getNameCategory(NameCats);
    if(NameCat.length >0){
    var Post= await singlepostModel.getPostfromMainCategories(NameCats);
    res.render('Category', {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      Featurepost: Feature.slice(0,3),
      NameCat:NameCat,
      Post:Post
    });
    }
    else{
      res.render('404',{layout:false});
    }
  }catch(next){
    
  }
});
router.get('/:TenCm/:TensubCm',async(req,res)=>{
  // var TenCm=req.params.TenCm;
  var TensubCm=req.params.TensubCm;
  try{
    var Feature = await singlepostModel.getFeaturePost();
    var NameCat= await CategoriesModel.getNameCategory(TensubCm);
    if(NameCat.length >0){
      var Post= await singlepostModel.getPostfromCategories(TensubCm);
    res.render('Single_Category', {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      Featurepost: Feature.slice(0,3),
      NameCat:NameCat,
      Post:Post
    });
    }
    else{
      res.render('404',{layout:false});
    }
  }catch(next){
    
  }
});

router.get('/:TenCm/:TensubCm/:id/:Tenbaiviet',async(req,res)=>{
    var Id=req.params.id;
    try{
      var DetailPost= await singlepostModel.getDetailPost(Id);
      if(DetailPost.length >0){
        var TagPost=await singlepostModel.getTagPost(Id);
      var CommentPost= await singlepostModel.getCommentPost(Id);
      // console.log(CommentPost);
      res.render('Single_Post',{
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      DetailPost:DetailPost,
      TagPost:TagPost,
      CommentPost:CommentPost
      })
      }
      else{
        res.render('404',{layout:false});
      }
    }catch(next){
     
    }
});



module.exports = router;
