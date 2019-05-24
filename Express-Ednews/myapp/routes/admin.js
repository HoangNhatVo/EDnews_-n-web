var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
/* GET users listing. */
router.get('/', function (req, res, next) {
  res.render('adminLayout/index', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/dang-bai', (req, res, next) => {
  res.render('adminLayout/PageCreatenew', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/thong-tin-tai-khoan', (req, res, next) => {
  res.render('adminLayout/PageInforUser', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/bai-viet-dang-cho', (req, res, next) => {
  res.render('adminLayout/PageDraft', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/bai-viet-cho-xuat-ban', (req, res, next) => {
  res.render('adminLayout/PageWaitRelease', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/bai-viet-da-xuat-ban', (req, res, next) => {
  res.render('adminLayout/PageRelease', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/bai-viet-bi-tu-choi', (req, res, next) => {
  res.render('adminLayout/PageDecline', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/quan-ly-tai-khoan', (req, res, next) => {
  res.render('adminLayout/PageManagerUser', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
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
router.get('/danh-sach-chuyen-muc/Chinh-sua-chuyen-muc/:TenCM', async (req, res, next) => {
  var NameCats = req.params.TenCM;
  console.log(NameCats);
  try {
    var MainCat = await CategoriesModel.getNameCategory(NameCats);
    var ListSubCat = await CategoriesModel.getListSubcatOfMainCat(NameCats);

    res.render('adminLayout/PageEditCat',
      {
        css: '/stylesheets/admin.css',
        style: '/stylesheets/sb-admin.css',
        MainCat: MainCat,
        ListSubCat: ListSubCat
      });
  } catch (err) {
    console.log(err);
  }

});
router.get('/danh-sach-chuyen-muc/them-chuyen-muc', (req, res, next) => {
  res.render('adminLayout/PageAddcat', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
router.get('/danh-sach-tag', (rep, res, next) => {
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
router.get('/danh-sach-tag/chinh-sua-tag/:TenTag', (req, res, next) => {
  var name =req.params.TenTag;
  res.render('adminLayout/PageEditTag',
    {
      css: '/stylesheets/admin.css',
      style: '/stylesheets/sb-admin.css'
    });
});
router.get('/danh-sach-tag/them-tag', (req, res, next) => {
  res.render('adminLayout/PageAddTag', { css: '/stylesheets/admin.css', style: '/stylesheets/sb-admin.css' });
});
module.exports = router;
