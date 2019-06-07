var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
const Tagmodel=require('../Model/tag.model');
const createnewModel = require('../Model/createnew.model');
var passport = require('passport');

//  Phân quyền truy cập các router
const auth_index = require('../MiddleWares/auth_index');
const auth_createnew = require('../MiddleWares/auth_createnew');
const auth_admin = require('../MiddleWares/auth_admin');
//


/* GET users listing. */
//Dashboard admin
router.get('/', auth_index, function (req, res, next) {
  res.render('adminLayout/index', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});

//Page Dang bai 
router.get('/dang-bai',auth_createnew, (req, res, next) => {
  createnewModel.getListCategory()
    .then(row => {
      res.render('adminLayout/PageCreatenew',
        {
          css: '/stylesheets/admin.css',
          style: '/stylesheets/sb-admin.css',
          ListCategory: row
        });
    }).catch(next);
  // res.render('adminLayout/PageCreatenew', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css',
  // ListCategory: ListCategory });
});
router.post('/:ID/dang-bai', (req,res,next)=>{
  var ID = req.params.ID;
  var tmp = req.body.ValueTags;
  var arr = tmp.split(",")
//  var tmp = req.body.abc;
  console.log('IDPV',ID);
  for( var i = 0 ; i < arr.length; i++){
    console.log(arr[i]);
  }
  
});
//Page thong tin tai khoan
router.get('/thong-tin-tai-khoan',auth_index, (req, res, next) => {
  res.render('adminLayout/PageInforUser', 
  { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page bai viet dang cho duyet
router.get('/bai-viet-dang-cho',auth_index, (req, res, next) => {
  var state=4;
  singlepostModel.GetPostWithState(state)
  .then(r=>{
    res.render('adminLayout/PageDraft',
   { 
     css: '/stylesheets/admin.css', 
     style: '/stylesheets/sb-admin.css' ,
      post:r
    });
  })
  .catch(next);
  
});
//Post duyet bai viet
router.post('/duyet-bai-viet',(req,res,next)=>{
  
});
//Page bai viet dang cho xuat ban
router.get('/bai-viet-cho-xuat-ban',auth_index, (req, res, next) => {
  var state=1;
  singlepostModel.GetPostWithState(state)
  .then(r=>{
    res.render('adminLayout/PageWaitRelease', { 
      css: '/stylesheets/admin.css',
       style: '/stylesheets/sb-admin.css',
       post:r
      });
  })
  .catch(next);
});

//Post xuat ban bai viet
router.post('/xuat-ban-bai-viet',(req,res,next)=>{

})
//Page bai viet da xuat ban
router.get('/bai-viet-da-xuat-ban',auth_index, (req, res, next) => {
  var state=2;
  singlepostModel.GetPostWithState(state)
  .then(r=>{
    res.render('adminLayout/PageRelease', 
    { 
      css: '/stylesheets/admin.css',
       style: '/stylesheets/sb-admin.css' ,
       post:r
      });
  })
  .catch(next)
 
});
//Page bai viet bi tu choi
router.get('/bai-viet-bi-tu-choi',auth_index, (req, res, next) => {
  var state=3;
  singlepostModel.GetPostWithState(3)
  .then(r=>{
    res.render('adminLayout/PageDecline', { 
      css: '/stylesheets/admin.css', 
      style: '/stylesheets/sb-admin.css',
      post:r
     });
  })
  .catch(next);
});
//Post tu choi bai viet
router.post('/tu-choi-bai-viet',(req,res,next)=>{

});
//Page quan ly tai khoan
router.get('/quan-ly-tai-khoan',auth_admin, (req, res, next) => {
  res.render('adminLayout/PageManagerUser', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page danh sach chuyen muc
router.get('/danh-sach-chuyen-muc',auth_admin, (rep, res, next) => {
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
router.get('/danh-sach-chuyen-muc/them-chuyen-muc',auth_admin, (req, res, next) => {
  res.render('adminLayout/PageAddcat', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
//Page chinh sua chuyen muc
router.get('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM',auth_admin, async (req, res, next) => {
  var NameCats = req.params.TenCM;
  try {
    var MainCat = await CategoriesModel.getNameCategory(NameCats);
    if (MainCat.length > 0) {
      var ListSubCat = await CategoriesModel.getListSubcatOfMainCat(NameCats);
      var Cat = [];
      MainCat.forEach(element => {
        Cat.push({
          MainCat: element,
          ListSubCat: ListSubCat
        })
      });

      res.render('adminLayout/PageEditCat',
        {
          css: '/stylesheets/admin.css',
          style: '/stylesheets/sb-admin.css',
          Cat: Cat,
          error: false,
        });
    } else {
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
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/xoa', (req, res, next) => {
  var CatID = req.body.CatID1;
  CategoriesModel.deleteCategories(CatID)
    .then(c => {
      res.redirect('/admin/danh-sach-chuyen-muc');
    })
    .catch(next);
  console.log(CatID);

});
// router xoa chuyen muc con
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/xoa-cmcon/:IdSub', (req, res, next) => {
  var SubCatID = req.params.IdSub;
  var NameCat = req.body.NameNo;
  CategoriesModel.deleteSubCat(SubCatID)
    .then(r => {
      res.redirect(`/admin/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/${NameCat}`);
    })
    .catch(next);
});
// router them chuyen muc con
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM/them-chuyen-muc-con', (req, res, next) => {
  var NameCat = req.params.TenCM;
  var NewName = req.body.CatSubName;
  var NewNoName = NewName.normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd').replace(/Đ/g, 'D')
    .replace(/\s/g, "")
    .toLowerCase();
  var IDMain = req.body.CatID1;
  console.log(IDMain, NewName, NewNoName);
  CategoriesModel.addSubCategories(IDMain, NewName, NewNoName)
    .then(r => {
      res.redirect(`/admin/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/${NameCat}`);
    })
    .catch(next);
});

//router them chuyen muc cha
router.post('/danh-sach-chuyen-muc/them-chuyen-muc', (req, res, next) => {
  var NewName = req.body.NewCatName;
  var NewNoName = NewName.normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd').replace(/Đ/g, 'D')
    .replace(/\s/g, "")
    .toLowerCase();
  // console.log(NewName,NewNoName);
  CategoriesModel.addMainCategoris(NewName, NewNoName)
    .then(c => {
      console.log(c);
      res.redirect('/admin/danh-sach-chuyen-muc');
    })
    .catch(next)
});

// router chinh sua chuyen muc
router.post('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM', async (req, res, next) => {
  var NameCat = req.params.TenCM;
  var IDMain = req.body.CatID1;
  var NewNameMain = req.body.CatName1;
  var NewNameMainNo = NewNameMain.normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/đ/g, 'd').replace(/Đ/g, 'D')
    .replace(/\s/g, "")
    .toLowerCase();
  // console.log(IDMain,NewNameMain,NewNameMainNo);
  var count = 0;
  try {
    var result = await CategoriesModel.getListSubcatOfMainCat(NameCat);
    for (var k in result) {
      if (result.hasOwnProperty(k))
        count++;
    }
    if(count==1){
    for (var i = 0; i < count; i++) {
      var IDSubcat = req.body.IDSubCat;
      var NameSubCat = req.body.CatName;
      var NameNoSubCat = NameSubCat.normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .replace(/đ/g, 'd').replace(/Đ/g, 'D')
        .replace(/\s/g, "")
        .toLowerCase();
      await CategoriesModel.updateSubCat(IDSubcat,NameSubCat,NameNoSubCat);
    }
  }
  if(count>1){
    for (var i = 0; i < count; i++) {
      var IDSubcat = req.body.IDSubCat[i];
      var NameSubCat = req.body.CatName[i];
      var NameNoSubCat = NameSubCat.normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .replace(/đ/g, 'd').replace(/Đ/g, 'D')
        .replace(/\s/g, "")
        .toLowerCase();
        await CategoriesModel.updateSubCat(IDSubcat,NameSubCat,NameNoSubCat);
    }
  }
    await CategoriesModel.updateMainCat(IDMain, NewNameMain, NewNameMainNo);

    res.redirect(`/admin/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/${NewNameMainNo}`);
  }
  catch (err) {
    console.log(err);
  }
});

//Page danh sach cac tag
router.get('/danh-sach-tag',auth_admin, (req, res, next) => {
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
router.post('/danh-sach-tag/xoa-tag', (req, res, next) => {
  var IDtag=req.body.IDtag;
  Tagmodel.deleteTag(IDtag)
  .then(r=>{
    res.redirect('/admin/danh-sach-tag');
  })
  .catch(next);
})
//Page chỉnh sửa tag
router.get('/danh-sach-tag/chinh-sua-tag/:IDTag', auth_admin,(req, res, next) => {
  var ID = req.params.IDTag;
  console.log(ID);
  Tagmodel.getTag(ID)
  .then(r=>{
    if(r.length>0){
    res.render('adminLayout/PageEditTag',
    {
      css: '/stylesheets/admin.css',
      style: '/stylesheets/sb-admin.css',
      tag:r
    });
  }
  else{
    res.render('404',{layout:false});
  }
  })
  .catch(next);
 
});
//router chinh sua tag
router.post('/danh-sach-tag/chinh-sua-tag',(req,res,next)=>{
  var IDtag=req.body.IDTag;
  var newNameTag=req.body.TagName;
  Tagmodel.updateTag(IDtag,newNameTag)
  .then(r=>{
    res.redirect('/admin/danh-sach-tag');
  })
  .catch(next);
})
//Page thêm tag
router.get('/danh-sach-tag/them-tag',auth_admin, (req, res, next) => {
  res.render('adminLayout/PageAddTag', 
  { 
    css: '/stylesheets/admin.css', 
    style: '/stylesheets/sb-admin.css' 
  });
});

// router them 1 tag
router.post('/danh-sach-tag/them-tag',(req,res,next)=>{
  var NewNametag=req.body.TagName;
  Tagmodel.addTag(NewNametag)
  .then(r=>{
    console.log(r);
    res.redirect('/admin/danh-sach-tag');
  })
  .catch(next);

});
module.exports = router;
