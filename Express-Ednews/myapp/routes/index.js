var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
const Tagmodel=require('../Model/tag.model');
const loginModel = require('../Model/login.model');
var passport = require('passport');

/* GET home page. */
router.get('/', async (req, res, next) => {
  let limit = 1;
  let offset = 0;
  try {
    var Feature = await singlepostModel.getFeaturePost();
    var New = await singlepostModel.getNewPost();
    var Today = await singlepostModel.getToDayPost();
    var ChinhTriCat = await singlepostModel.getPostfromCategories('chinhtri', 3, offset);
    var BongdaCat = await singlepostModel.getPostfromCategories('bongda', 3, offset);
    var ThoiTrang = await singlepostModel.getPostfromCategories('fashion', limit, offset);
    var TaiChinh = await singlepostModel.getPostfromCategories('taichinh', limit, offset);
    var Showbiz = await singlepostModel.getPostfromCategories('showbiz', limit, offset);
    var Smartphone = await singlepostModel.getPostfromCategories('smartphone', limit, offset);
    console.log(req.user);
    res.render('index',
      {
        css: '/stylesheets/index.css',
        style: '/stylesheets/style.css',
        Featurepost: Feature.slice(0, 2),
        Newpost: New.slice(0, 6),
        ToDaypost: Today,
        ChinhTriCat: ChinhTriCat,
        BongdaCat: BongdaCat,
        ThoiTrang: ThoiTrang,
        TaiChinh: TaiChinh,
        Showbiz: Showbiz,
        Smartphone: Smartphone,
        user: req.user
      });
  } catch (err) {
    next();
  };
});
//Page lien he
router.get('/lien-he', async function (req, res, next) {
  var Feature = await singlepostModel.getFeaturePost();
  res.render('Contact',
    {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css', user: req.user
    });
});
//Page thong tin ca nhan
router.get('/thong-tin-ca-nhan',async function (req, res, next) {
  var Feature = await singlepostModel.getFeaturePost();
  //res.render('subcriber', { css: '/stylesheets/index.css', style: '/stylesheets/style.css', user: req.user });
  if (req.isAuthenticated()) {
    res.render('subcriber', { css: '/stylesheets/index.css', style: '/stylesheets/style.css', user: req.user });
  }
  else {
    res.redirect('/');
  }
});
//page doi mat khau
router.get('/doi-mat-khau', function (req, res, next) {
  if (req.isAuthenticated()) {
    res.render('ChangePassword', { css: '/stylesheets/index.css', style: '/stylesheets/style.css', user: req.user })
  }
  else {
    res.redirect('/');
  }
});
//page dang nhap
router.get('/dangnhap', function (req, res, next) {
  console.log(req.user);
  if (!req.isAuthenticated() || req.user == true) {
    req.logout();
    req.session.cookie.expires = false;
    res.render('Login', {
      layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      message: req.flash('loginMessage'),
      message_register: req.flash('signupMessage')
    });
  }
  else {
    res.redirect('/');
  }
});
//router dang nhap
router.post('/dangnhap', passport.authenticate('local-login', {
  failureRedirect: '/dangnhap',
  successRedirect: '/',
  failureFlash: true
}),
  function (req, res) {
    if (req.body.remember) {
      req.session.cookie.maxAge = 1000 * 60 * 3;
    }
    else {
      req.session.cookie.expires = false;
    }
    res.redirect('/');
  }
);
//dang nhap facebook
router.get('/auth/facebook', passport.authenticate('facebook', { scope: ['email'] }));
router.get('/auth/facebook/callback', passport.authenticate('facebook', {
  failureRedirect: '/',
  successRedirect: '/',
  failureFlash: true
}));
//dang xuat
router.get('/logout', function (req, res) {
  req.logout();
  req.session.cookie.expires = false;
  res.redirect('/');
});
//page dang ky
router.get('/dangky', function (req, res, next) {
  if (!req.isAuthenticated()) {
    res.render('Register', {
      layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      message: req.flash('signupMessage')
    });
  }
  else {
    res.redirect('/');
  }
});
//router dang ky
router.post('/dangky', passport.authenticate('local-signup', {
  failureRedirect: '/dangky',
  successRedirect: '/dangnhap',
  failureFlash: true
}),
  function (req, res) {

  }
);
//page danh sach bai viet theo tag
router.get('/tag/:Tentag',async (req, res, next) => {
  var nametag=req.params.Tentag;
  console.log(nametag);
  try{
    var check= await Tagmodel.checkTag(nametag);
    if(check.length>0){
    var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 10;
      var offset = (page - 1) * limit;


      Promise.all([
        singlepostModel.getPostwithTag(nametag,limit,offset),
        singlepostModel.getCountPostwithTag(nametag)
      ]).then(([rows, count_rows]) => {
        var total = count_rows[0].SoLuongBaiViet;
        var nPages = Math.floor(total / limit);
        if (total % limit > 0) nPages++;
        var pages = [];
        for (i = 1; i <= nPages; i++) {
          var obj = { value: i, active: i === +page };
          pages.push(obj);
        }
        var checkPre;
        var checkNext;
        //kiem tra neu la page dau tien
        if (page == pages[0].value && pages[0].active == true) {
          checkPre = {
            check: true,
            value: 0
          },
            checkNext = {
              check: false,
              value: pages[page - 1].value + 1
            }
        }
        //kiem tra la page cuoi cung
        if (page == pages[nPages - 1].value && pages[nPages - 1].active == true) {
          checkNext = {
            check: true,
            value: 0
          },
            checkPre = {
              check: false,
              value: pages[page - 1].value - 1
            }
        }
        res.render('List_Post_withTag', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          Nametag:check,
          Post: rows,
          pages: pages,
          checkPre: checkPre,
          checkNext: checkNext,
          user: req.user
        });
      }).catch(next);
    }
    else {
      res.render('404', { layout: false });
    }
    
  }
  catch(err){
    console.log(err);
  }
});

router.get('/:TenCM', async (req, res, next) => {
  var NameCats = req.params.TenCM;
  try {
    var Feature = await singlepostModel.getFeaturePost();
    var NameCat = await CategoriesModel.getNameCategory(NameCats);
    if (NameCat.length > 0) {
      var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 2;
      var offset = (page - 1) * limit;
      var post=["bbb"];
      Promise.all([
        singlepostModel.getPostfromMainCategories(NameCats, limit, offset),
        singlepostModel.getCountPostfromMainCat(NameCats),
      ]).then(([rows, count_rows]) => {
        
        rows.forEach(element => {
          singlepostModel.getTagPost(element.IDBaiViet)
          .then(r=>{
            post.push("aaa");
            
          })
          .catch(next);
        });
        
        var total = count_rows[0].total;
        var nPages = Math.floor(total / limit);
        if (total % limit > 0) nPages++;
        var pages = [];
        for (i = 1; i <= nPages; i++) {
          var obj = { value: i, active: i === +page };
          pages.push(obj);
        }
        var checkPre;
        var checkNext;
        //kiem tra neu la page dau tien
        if (page == pages[0].value && pages[0].active == true) {
          checkPre = {
            check: true,
            value: 0
          },
            checkNext = {
              check: false,
              value: pages[page - 1].value + 1
            }
        }
        //kiem tra la page cuoi cung
        if (page == pages[nPages - 1].value && pages[nPages - 1].active == true) {
          checkNext = {
            check: true,
            value: 0
          },
            checkPre = {
              check: false,
              value: pages[page - 1].value - 1
            }
        }
        console.log(post)
        res.render('Category', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          Featurepost: Feature.slice(0, 3),
          NameCat: NameCat,
          Post: rows,
          pages: pages,
          checkPre: checkPre,
          checkNext: checkNext,
          user: req.user
        });
      }).catch(next);
    }
    else {
      res.render('404', { layout: false });
    }
  } catch (err) {
    console.log(err);
  }
});
router.get('/:TenCm/:TensubCm', async (req, res) => {
  // var TenCm=req.params.TenCm;
  var TensubCm = req.params.TensubCm;
  try {
    var Feature = await singlepostModel.getFeaturePost();
    var NameCat = await CategoriesModel.getNameCategory(TensubCm);
    if (NameCat.length > 0) {
      // var Post= await singlepostModel.getPostfromCategories(TensubCm);
      var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 2;
      var offset = (page - 1) * limit;


      Promise.all([
        singlepostModel.getPostfromCategories(TensubCm, limit, offset),
        singlepostModel.getCountPostCat(TensubCm),
      ]).then(([rows, count_rows]) => {

        var total = count_rows[0].total;
        var nPages = Math.floor(total / limit);
        if (total % limit > 0) nPages++;
        var pages = [];
        for (i = 1; i <= nPages; i++) {
          var obj = { value: i, active: i === +page };
          pages.push(obj);
        }
        var checkPre;
        var checkNext;
        if (nPages == 1) {
          checkPre = {
            check: true,
            value: 1
          },
            checkNext = {
              check: true,
              value: 1
            }
        } else {
          //kiem tra neu la page dau tien
          if (page == pages[0].value && pages[0].active == true) {
            checkPre = {
              check: true,
              value: 0
            },
              checkNext = {
                check: false,
                value: pages[page - 1].value + 1
              }
          } else {
            //kiem tra la page cuoi cung
            if (page == pages[nPages - 1].value && pages[nPages - 1].active == true) {
              checkNext = {
                check: true,
                value: 0
              },
                checkPre = {
                  check: false,
                  value: pages[page - 1].value - 1
                }
            }
          }
        }
        res.render('Single_Category', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          Featurepost: Feature.slice(0, 3),
          NameCat: NameCat,
          Post: rows,
          checkPre,
          checkNext,
          user: req.user
        });
      }).catch(err => {
        console.log(err);
      })
    }
    else {
      res.render('404', { layout: false });
    }
  } catch (err) {
    console.log(err);
  }
});

router.get('/:TenCm/:TensubCm/:id/:Tenbaiviet', async (req, res) => {
  var Id = req.params.id;
  try {
    var DetailPost = await singlepostModel.getDetailPost(Id);
    if (DetailPost.length > 0) {
      var TagPost = await singlepostModel.getTagPost(Id);
      var CommentPost = await singlepostModel.getCommentPost(Id);
      // console.log(CommentPost);
      res.render('Single_Post', {
        css: '/stylesheets/index.css',
        style: '/stylesheets/style.css',
        DetailPost: DetailPost,
        TagPost: TagPost,
        CommentPost: CommentPost,
        user: req.user
      })
    }
    else {
      res.render('404', { layout: false });
    }
  } catch (err) {
    console.log(err);
  }
});



module.exports = router;
