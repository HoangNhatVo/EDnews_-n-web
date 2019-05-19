var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
/* GET home page. */
router.get('/', async (req, res) => {
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
    await New.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
      
    });
    await Feature.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await Today.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await ChinhTriCat.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await BongdaCat.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await ThoiTrang.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await TaiChinh.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await Showbiz.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await Smartphone.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
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
  } catch (e) {
    console.log(e);
  }
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
    var Post= await singlepostModel.getPostfromMainCategories(NameCats);

    await Feature.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await Post.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    res.render('Category', {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      Featurepost: Feature.slice(0,3),
      NameCat:NameCat,
      Post:Post
    });
  }catch(err){
    console.log(err);
  }
});
router.get('/:TenCm/:TensubCm',async(req,res)=>{
  // var TenCm=req.params.TenCm;
  var TensubCm=req.params.TensubCm;
  try{
    var Feature = await singlepostModel.getFeaturePost();
    var NameCat= await CategoriesModel.getNameCategory(TensubCm);
    var Post= await singlepostModel.getPostfromCategories(TensubCm);
    await Feature.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    await Post.forEach(element => {
      element.NgayDang  = element.NgayDang.toString().substring(0,15);
    });
    res.render('Single_Category', {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      Featurepost: Feature.slice(0,3),
      NameCat:NameCat,
      Post:Post
    });
  }catch(err){
    console.log(err);
  }
});

router.get('/:TenCm/:TensubCm/:id/:Tenbaiviet',async(req,res)=>{
    var Id=req.params.id;
    try{
      var DetailPost= await singlepostModel.getDetailPost(Id);
      var TagPost=await singlepostModel.getTagPost(Id);
      var CommentPost= await singlepostModel.getCommentPost(Id);
      await DetailPost.forEach(element => {
        element.NgayDang  = element.NgayDang.toString().substring(0,15);
      });
      await CommentPost.forEach(element => {
        element.NgayBinhLuan  = element.NgayBinhLuan.toString().substring(0,15);
      });
      console.log(CommentPost);
      res.render('Single_Post',{
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
      DetailPost:DetailPost,
      TagPost:TagPost,
      CommentPost:CommentPost
      })
    }catch(err){
      console.log(err);
    }
});
// router.get('/thethao/bong-da', function (req, res, next) {
//   res.render('Single_Category', { category: 'Thể thao', singleCategory: 'Bóng đá', css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
// });
// router.get('/thethao/the-thao-the-gioi', function (req, res, next) {
//   res.render('Single_Category', { category: 'Thể thao', singleCategory: 'Thể thao thế giới', css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
// });


// router.get('/thethao/the-thao-the-gioi/toc-do-lam-chu-cuoc-dua', function (req, res, next) {
//   res.render('Single_Post', { category: 'Thể thao', singleCategory: 'Thể thao thế giới', css: '/stylesheets/index.css', style: '/stylesheets/style.css' });
// });


module.exports = router;
