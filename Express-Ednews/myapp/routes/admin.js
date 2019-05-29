var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');

// create application/x-www-form-urlencoded parser

/* GET users listing. */
//Dashboard admin
router.get('/', function (req, res, next) {
  res.render('adminLayout/index', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page Dang bai 
router.get('/dang-bai', (req, res, next) => {
  res.render('adminLayout/PageCreatenew', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page thong tin tai khoan
router.get('/thong-tin-tai-khoan', (req, res, next) => {
  res.render('adminLayout/PageInforUser', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page bai viet dang cho duyet
router.get('/bai-viet-dang-cho', (req, res, next) => {
  res.render('adminLayout/PageDraft', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page bai viet dang cho xuat ban
router.get('/bai-viet-cho-xuat-ban', (req, res, next) => {
  res.render('adminLayout/PageWaitRelease', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page bai viet da xuat ban
router.get('/bai-viet-da-xuat-ban', (req, res, next) => {
  res.render('adminLayout/PageRelease', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page bai viet bi tu choi
router.get('/bai-viet-bi-tu-choi', (req, res, next) => {
  res.render('adminLayout/PageDecline', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page quan ly tai khoan
router.get('/quan-ly-tai-khoan', (req, res, next) => {
  res.render('adminLayout/PageManagerUser', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page danh sach chuyen muc
router.get('/danh-sach-chuyen-muc', (rep, res, next) => {
  CategoriesModel.getListNameCategory()
    .then(row => {
      res.render('adminLayout/PageListCat',
        {
          css: '/stylesheets/admin.css',
          style: '/stylesheets/sb-admin.css',
          ListCat: row
        });
    }).catch(next);

});
//Page them chuyen muc
router.get('/danh-sach-chuyen-muc/them-chuyen-muc', (req, res, next) => {
  res.render('adminLayout/PageAddcat', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page chinh sua chuyen muc
router.get('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM', async (req, res, next) => {
  var NameCats = req.params.TenCM;
  try {
    var MainCat = await CategoriesModel.getNameCategory(NameCats);
    if(MainCat.length>0){
    var ListSubCat = await CategoriesModel.getListSubcatOfMainCat(NameCats);
      var Cat=[];
      MainCat.forEach(element => {
        Cat.push({
          MainCat:element,
          ListSubCat:ListSubCat
        })
      });
      
    res.render('adminLayout/PageEditCat',
      {
        css: '/stylesheets/admin.css',
        style: '/stylesheets/sb-admin.css',
        Cat:Cat,
        error: false,
      });
    }else{
      res.render('adminLayout/PageEditCat',
      {
        css: '/stylesheets/admin.css',
        style: '/stylesheets/sb-admin.css',
        error: true,
      });
    }
  }
   catch (err) {
    console.log(err);
  }

});
// route xoa chuyen muc cha
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/xoa',(req,res,next)=>{
  var CatID=req.body.CatID1;
  CategoriesModel.deleteCategories(CatID)
  .then(c=>{
    res.redirect('/admin/danh-sach-chuyen-muc');
  })
  .catch(next);
  console.log(CatID);
  
});
// router xoa chuyen muc con
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/xoa-cmcon/:IdSub',(req,res,next)=>{
  var SubCatID=req.params.IdSub;
  var NameCat=req.body.NameNo;
  CategoriesModel.deleteSubCat(SubCatID)
  .then(r=>{
    res.redirect(`/admin/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/${NameCat}`);
  })
  .catch(next);
});
// router them chuyen muc con
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM/them-chuyen-muc-con',(req,res,next)=>{
  var NameCat=req.params.TenCM;
  var NewName=req.body.CatSubName;
  var NewNoName=NewName.normalize('NFD')
                        .replace(/[\u0300-\u036f]/g, '')
                        .replace(/đ/g, 'd').replace(/Đ/g, 'D')
                        .replace(/\s/g,"")
                        .toLowerCase();
  var IDMain=req.body.CatID1;
  console.log(IDMain,NewName,NewNoName);
  CategoriesModel.addSubCategories(IDMain,NewName,NewNoName)
  .then(r=>{
    res.redirect(`/admin/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/${NameCat}`);
  })
  .catch(next);
});

//router them chuyen muc cha
router.post('/danh-sach-chuyen-muc/them-chuyen-muc', (req, res, next) =>{
  var NewName=req.body.NewCatName;
  var NewNoName=NewName.normalize('NFD')
                        .replace(/[\u0300-\u036f]/g, '')
                        .replace(/đ/g, 'd').replace(/Đ/g, 'D')
                        .replace(/\s/g,"")
                        .toLowerCase();
  // console.log(NewName,NewNoName);
  CategoriesModel.addMainCategoris(NewName,NewNoName)
  .then(c=>{
    console.log(c);
    res.redirect('/admin/danh-sach-chuyen-muc');
  })
  .catch(next)
});

//Page danh sach cac tag
router.get('/danh-sach-tag', (req, res, next) => {
  CategoriesModel.getListTag()
    .then(row => {
      res.render('adminLayout/PageListTag',
        {
          css: '/stylesheets/admin.css',
          style: '/stylesheets/sb-admin.css',
          ListTag: row
        });
    }).catch(next)

});
//Xoa tag
router.post('/danh-sach-tag/xoa-tag',(req,res,next)=>{
  console.log(req.body.abc);
  res.send(req.body.abc);
})
//Page chỉnh sửa tag
router.get('/danh-sach-tag/chinh-sua-tag/:TenTag', (req, res, next) => {
  var name =req.params.TenTag;
  console.log(name);
  res.render('adminLayout/PageEditTag',
    {
      css: '/stylesheets/admin.css',
      style: '/stylesheets/sb-admin.css'
    });
});
//Page thêm tag
router.get('/danh-sach-tag/them-tag', (req, res, next) => {
  res.render('adminLayout/PageAddTag', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
module.exports = router;
