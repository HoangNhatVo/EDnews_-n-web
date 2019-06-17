var express = require('express');
var router = express.Router();
const singlepostModel = require('../Model/single_post.model');
const CategoriesModel = require('../Model/categories.model');
const Tagmodel = require('../Model/tag.model');
const loginModel = require('../Model/login.model');
var passport = require('passport');
var bCrypt = require('bcrypt');
var moment = require('moment');
var nodemailer = require('nodemailer');
var xoauth2 = require('xoauth2');
const configAuth = require('../MiddleWares/auth');
const saltRounds = 10;
const paymentModel = require('../Model/payment.model');
const commentModel = require('../Model/comment.model');
var handlebar=require('handlebars');
handlebar.registerHelper('ifCond', function (v1, operator, v2, options) {

  switch (operator) {
      case '==':
          return (v1 == v2) ? options.fn(this) : options.inverse(this);
      case '===':
          return (v1 === v2) ? options.fn(this) : options.inverse(this);
      case '!=':
          return (v1 != v2) ? options.fn(this) : options.inverse(this);
      case '!==':
          return (v1 !== v2) ? options.fn(this) : options.inverse(this);
      case '<':
          return (v1 < v2) ? options.fn(this) : options.inverse(this);
      case '<=':
          return (v1 <= v2) ? options.fn(this) : options.inverse(this);
      case '>':
          return (v1 > v2) ? options.fn(this) : options.inverse(this);
      case '>=':
          return (v1 >= v2) ? options.fn(this) : options.inverse(this);
      case '&&':
          return (v1 && v2) ? options.fn(this) : options.inverse(this);
      case '||':
          return (v1 || v2) ? options.fn(this) : options.inverse(this);
      default:
          return options.inverse(this);
  }
});

/* GET home page. */
router.get('/', async (req, res, next) => {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(req.user);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if ((req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now)|| req.user.PhanHe=='PH1'|| req.user.PhanHe=='PH2'||req.user.PhanHe=='PH3')  {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  let limit = 1;
  let offset = 0;
  try {
    var Feature = await singlepostModel.getFeaturePost(Pre);
    var New = await singlepostModel.getNewPost(Pre);
    var Today = await singlepostModel.getToDayPost(Pre);
    var ChinhTriCat = await singlepostModel.getPostfromCategories('chinhtri', 3, offset, Pre);
    var BongdaCat = await singlepostModel.getPostfromCategories('bongda', 3, offset, Pre);
    var ThoiTrang = await singlepostModel.getPostfromCategories('fashion', limit, offset, Pre);
    var TaiChinh = await singlepostModel.getPostfromCategories('taichinh', limit, offset, Pre);
    var Showbiz = await singlepostModel.getPostfromCategories('showbiz', limit, offset, Pre);
    var Smartphone = await singlepostModel.getPostfromCategories('smartphone', limit, offset, Pre);
    res.render('index',
      {
        css: '/stylesheets/index.css',
        style: '/stylesheets/style.css',
        Featurepost: Feature.slice(0, 8),
        Newpost: New.slice(0, 7),
        ToDaypost: Today.slice(0,9),
        ChinhTriCat: ChinhTriCat,
        BongdaCat: BongdaCat,
        ThoiTrang: ThoiTrang,
        TaiChinh: TaiChinh,
        Showbiz: Showbiz,
        Smartphone: Smartphone
        // user: req.user
      });
  } catch (err) {
    next();
  };
});
//Page lien he
router.get('/lien-he', async function (req, res, next) {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var Feature = await singlepostModel.getFeaturePost(Pre);
  res.render('Contact',
    {
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css'//, user: req.user
    });
});

//Page thong tin ca nhan
router.get('/thong-tin-ca-nhan', async function (req, res, next) {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var Feature = await singlepostModel.getFeaturePost(Pre);
  //res.render('subcriber', { css: '/stylesheets/index.css', style: '/stylesheets/style.css', user: req.user });
  if (req.isAuthenticated()) {
    res.render('subcriber', {
      css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      //user: req.user, 
      msg_changeInfo: req.flash('msg_info')
    });
  }
  else {
    res.redirect('/');
  }
});

router.post('/thong-tin-ca-nhan/:ID', function (req, res, next) {
  var ID = req.params.ID;
  var Info = {
    HoTen: req.body.fullname,
    NgaySinh: moment(req.body.Birthdate, 'MM/DD/YYYY').format('YYYY-MM-DD'),
    Email: req.body.Email
  }
  if (ID != 0) {
    loginModel.getUserWithIDAndEmail(ID, Info.Email).then(r1 => {
      if (!r1.length) {
        loginModel.updateInfoUserWithID(ID, Info.HoTen, Info.NgaySinh, Info.Email).then(r => {
          req.logout();
          req.session.cookie.expires = false;
          // req.flash('signupMessage', 'Đã cập nhật thông tin, mời đăng nhập lại');
          res.redirect('/');
        }).catch(err => {
          req.flash('msg_info', 'Không cập nhật được thông tin');
          res.redirect('/thong-tin-ca-nhan');
        })
      }
      else {
        req.flash('msg_info', 'Email vừa nhập đã tồn tại, chưa cập nhật được thông tin');
        res.redirect('/thong-tin-ca-nhan');
      }
    }).catch(err => {
      req.flash('msg_info', 'Lỗi không cập nhật được thông tin');
      res.redirect('/thong-tin-ca-nhan');
    })
  }
  else {
    req.flash('msg_info', 'Không thể chỉnh sửa thông tin cá nhân');
    res.redirect('/thong-tin-ca-nhan');
  }
});

//page doi mat khau
router.get('/thong-tin-ca-nhan/:ID/doi-mat-khau', async function (req, res, next) {
  var Feature = await singlepostModel.getFeaturePost(1);
  var ID = req.params.ID;
  if (req.isAuthenticated() && ID != 0) {
    res.render('ChangePassword', {
      css: '/stylesheets/index.css', style: '/stylesheets/style.css', //user: req.user,
      message_changePassword: req.flash('changePasswordMessage')
    })
  }
  else {
    req.flash('msg_info', 'Không thể đổi mật khẩu');
    if (ID == 0) res.redirect('/thong-tin-ca-nhan');
    res.redirect('/');
  }
});
router.post('/thong-tin-ca-nhan/:ID/doi-mat-khau', function (req, res, next) {
  var ID = req.params.ID;
  var newPass = bCrypt.hashSync(req.body.newPass, bCrypt.genSaltSync(saltRounds));
  var currentPass = bCrypt.hashSync(req.body.currentPass, bCrypt.genSaltSync(saltRounds));
  loginModel.getUserWithID(ID).then(r1 => {
    if (!r1.length) {
      req.flash('changePasswordMessage', 'Không tìm thấy người dùng');
      res.redirect(`/thong-tin-ca-nhan/${ID}/doi-mat-khau`);
    }
    else {
      if (!bCrypt.compareSync(req.body.currentPass, r1[0].Password)) {
        req.flash('changePasswordMessage', 'Nhập mật khẩu hiện tại không đúng');
        res.redirect(`/thong-tin-ca-nhan/${ID}/doi-mat-khau`);
      }
      else {
        loginModel.updatePasswordUserWithID(ID, newPass).then(r2 => {
          req.logout();
          req.session.cookie.expires = false;
          // req.flash('signupMessage', 'Đổi mật khẩu thành công, mời đăng nhập lại');
          res.redirect('/');
        }).catch(err => {
          req.flash('changePasswordMessage', 'Đã xảy ra lỗi');
          res.redirect(`/thong-tin-ca-nhan/${ID}/doi-mat-khau`);
        })
      }
    }
  }).catch(err => {
    req.flash('changePasswordMessage', 'Đã xảy ra lỗi');
    res.redirect(`/thong-tin-ca-nhan/${ID}/doi-mat-khau`);
  });
});

//page dang nhap
router.get('/dangnhap', function (req, res, next) {
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
router.post('/logout', function (req, res) {
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

//Page Quen mat khau
router.get('/quen-mat-khau', function (req, res, next) {
  if (!req.isAuthenticated()) {
    res.render('ForgotPassword', {
      layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      message_send_error: req.flash('send_error')
    });
  }
  else {
    res.redirect('/');
  }
});
router.post('/quen-mat-khau', function (req, res, next) {
  loginModel.getUserWithEmail(req.body.email).then(r => {
    if (!r.length) {
      req.flash('send_error', 'Tài khoản không tồn tại');
      res.redirect('/quen-mat-khau');
    }
    else {
      var OTP = moment().unix();
      console.log('OTP', OTP);
      loginModel.addOTPUserWithEmail(req.body.email, '').then(rows => {
        console.log(rows);
      }).catch(err => {
        console.log(err);
      })
      const options = {
        pool: true,
        host: 'smtp-relay.example.com',
        port: 465,
        secure: true,
        auth: {
          user: configAuth.email,
          pass: configAuth.pass
        }
      };
      var transporter = nodemailer.createTransport({
        service: 'Gmail',
        auth: {
          user: configAuth.email,
          pass: configAuth.pass
        }
      });
      var message = {
        from: configAuth.from,
        to: req.body.email,
        subject: 'OTP code',
        test: 'Plaintext version of the message',
        html: '<h3>OTP code: ' + OTP + ' </h3>'
      };
      transporter.sendMail(message, (err, info) => {
        if (err) {
          console.log('err', err);
          req.flash('send_error', 'Không gửi được OTP');
          res.redirect('/quen-mat-khau');
          // return   console.log('err', err);
        }
        console.log('Message sent: %s', info.messageId);
        console.log('Preview URL: %s', nodemailer.getTestMessageUrl(info));
        req.flash('abc', 'abc');
        req.flash('send_success', 'Đã gửi mã OTP');
        loginModel.addOTPUserWithEmail(req.body.email,
          bCrypt.hashSync(OTP.toString(), bCrypt.genSaltSync(saltRounds))).then(r => {
            console.log(r);
          }).catch(err => {
            req.flash('send_error', 'Đã xảy ra lỗi');
            res.redirect('/quen-mat-khau');
          })
        res.redirect(`/nhap-ma-otp-xac-nhan/${req.body.email}`);
      })

      // var transporter = nodemailer.createTransport({
      //   service: 'Gmail',
      //   auth: {
      //       xoauth2: {//xoauth2.createXOAuth2Generator({
      //           user: 'ednewsmail@gmail.com',
      //           clientId: '665059376256-er1hqtd16ua6c9l3ab7qco1vln3jnvo6.apps.googleusercontent.com',
      //           clientSecret: 'P1fQu94M2Fs7hKNufLl2RvKG',
      //           refreshToken: '1/Tznv54BsjIoHASC605E0nVcks-P7ULxe8TI3pSzyFnxiB7dTdEwUJIJ9M1BHliVG'
      //       }
      //   }
      // });

      // var mailOptions = {
      //     from: 'My Name <ednewsmail@gmail.com>',
      //     to: 'vannhat8198@gmail.com',
      //     subject: 'Nodemailer test',
      //     generateTextFromHTML: true,
      //     html: "<b>Hello world</b>"
      // };

      // transporter.sendMail(mailOptions, function (err, res) {
      //     if(err){
      //         console.log(err);
      //     } else {
      //         console.log('Email Sent');
      //     }
      //     transporter.close();
      // }); 

    }
  }).catch(err => {
    req.flash('send_error', 'Đã xảy ra lỗi');
    res.redirect('/quen-mat-khau');
  })
});

router.get('/nhap-ma-otp-xac-nhan/:email', function (req, res, next) {
  var email = req.params.email;
  if (!req.isAuthenticated() && (req.flash('abc').length != 0)) {
    res.render('InputOTP', {
      layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      email, message_send_success: req.flash('send_success'),
      message_input_error: req.flash('input_error')
    });
  }
  else {
    res.redirect('/');
  }
});
router.post('/nhap-ma-otp-xac-nhan/:email', function (req, res, next) {
  var email = req.params.email;
  var OTP = req.body.OTP;
  var x = (moment().unix() - 120).toString();
  console.log('OTP', OTP);
  console.log('x', x);

  // if (OTP >= x) {
    loginModel.getUserWithEmail(email).then(r1 => {
      if (!r1.length) {
        req.flash('abc', 'abc');
        req.flash('input_error', 'Không tìm thấy tài khoản');
        res.redirect(`/nhap-ma-otp-xac-nhan/${email}`);
      }
      else {
        if (!bCrypt.compareSync(OTP, r1[0].OTP)) {
          req.flash('abc', 'abc');
          req.flash('input_error', 'Mã OTP sai, mời nhập lại');
          res.redirect(`/nhap-ma-otp-xac-nhan/${email}`);
        }
        else {
          if(OTP >= x){
          req.flash('opt_success', 'Mã OTP chính xác');
          req.flash('xyz', 'xyz');
          loginModel.addOTPUserWithEmail(email, '').then(r2 => {
            console.log(r2);
          }).catch(err => {
            console.log(err);
          })
          res.redirect(`/reset-password/${email}`);
        }
        else{
          req.flash('send_error', 'Mã OTP đã quá hạn');
          loginModel.addOTPUserWithEmail(email, '').then(r => {
            console.log(r);
          }).catch(err => {
            console.log(err);
            req.flash('send_error', 'Đã xảy ra lỗi');
          })
          res.redirect('/quen-mat-khau');
        }
      }
    }
    }).catch(err => {
      req.flash('abc', 'abc');
      req.flash('input_error', 'Đã xảy ra lỗi');
      res.redirect(`/nhap-ma-otp-xac-nhan/${email}`);
  })
  // }
  // else {
  //   req.flash('send_error', 'Mã OTP đã quá hạn');
  //   loginModel.addOTPUserWithEmail(email, '').then(r => {
  //     console.log(r);
  //   }).catch(err => {
  //     console.log(err);
  //     req.flash('send_error', 'Đã xảy ra lỗi');
  //   })
  //   res.redirect('/quen-mat-khau');
  // }
});

router.get('/reset-password/:email', function (req, res, next) {
  var email = req.params.email;
  if (!req.isAuthenticated() && (req.flash('xyz').length != 0)) {
    res.render('ResetPassword', {
      layout: false, css: '/stylesheets/index.css', style: '/stylesheets/style.css',
      email, message_send_success: req.flash('opt_success'),
      message_input_password_error: req.flash('input_password_error')
    });
  }
  else {
    res.redirect('/');
  }
});
router.post('/reset-password/:email', function (req, res, next) {
  var Email = req.params.email;
  var Password = bCrypt.hashSync(req.body.password, bCrypt.genSaltSync(saltRounds));
  loginModel.updatePasswordUserWithEmail(Email, Password).then(r => {
    req.flash('signupMessage', 'Mật khẩu đã khôi phục, mời đăng nhập lại');
    res.redirect('/dangnhap');
  }).catch(err => {
    req.flash('xyz', 'xyz');
    req.flash('input_password_error', 'Mật khẩu chưa đổi được');
    res.redirect(`/reset-password/${Email}`);
  })
});
//post tim kiem
router.post('/tim-kiem/:NoiDung', (req, res, next) => {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var key = req.body.search;
  var page = req.query.page || 1;
  if (page < 1) page = 1;

  var limit = 10;
  var offset = (page - 1) * limit;
  Promise.all([
    singlepostModel.SearchPost(key, limit, offset,Pre),
    singlepostModel.CountSearchPost(key,Pre)
  ])
    .then(([row, count_row]) => {
      if (count_row[0].Num != 0) {
        async function getTagPost(p) {
          var post = [];
          for (let t of p) {
            try {
              var Tag = await singlepostModel.getTagPost(t.IDBaiViet);
              post.push({
                Content: t,
                Tag: Tag
              });
            }
            catch (e) {
              console.log(e);
            }
          }
          return post;
        }
        getTagPost(row)
        .then(r=>{
          var total = count_row[0].Num;
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
        var pagination;
        if (nPages == 1) pagination = false;
        else pagination = true;
        res.render('SearchPage', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          count_row,
          Post: r,
          pages: pages,
          checkPre: checkPre,
          checkNext: checkNext,
          check: true,
          pagination,
          user: req.user
        });
        })
        
      }
      else {
        res.render('SearchPage', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          check: false,
          count_row,
          user: req.user
        });
      }
    })
    .catch(next)
});

// page tim kiem
router.get('/tim-kiem/:NoiDung', (req, res, next) => {
  var content=req.params.NoiDung;
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var page = req.query.page || 1;
  if (page < 1) page = 1;

  var limit = 10;
  var offset = (page - 1) * limit;
  Promise.all([
    singlepostModel.SearchPost(content, limit, offset,Pre),
    singlepostModel.CountSearchPost(content,Pre)
  ])
    .then(([row, count_row]) => {
      if (count_row[0].Num != 0) {
        async function getTagPost(p) {
          var post = [];
          for (let t of p) {
            try {
              var Tag = await singlepostModel.getTagPost(t.IDBaiViet);
              post.push({
                Content: t,
                Tag: Tag
              });
            }
            catch (e) {
              console.log(e);
            }
          }
          return post;
        }
        getTagPost(row)
        .then(r=>{
          var total = count_row[0].Num;
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
        var pagination;
        if (nPages == 1) pagination = false;
        else pagination = true;
        res.render('SearchPage', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          count_row,
          Post: r,
          pages: pages,
          checkPre: checkPre,
          checkNext: checkNext,
          check: true,
          pagination,
          user: req.user
        });
        })
        
      }
      else {
        res.render('SearchPage', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          check: false,
          count_row,
          user: req.user
        });
      }
    })
    .catch(next)
});

//page danh sach bai viet theo tag
router.get('/tag/:Tentag', async (req, res, next) => {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var nametag = req.params.Tentag;
  console.log(nametag);
  try {
    var check = await Tagmodel.checkTag(nametag);
    if (check.length > 0) {
      var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 10;
      var offset = (page - 1) * limit;


      Promise.all([
        singlepostModel.getPostwithTag(nametag, limit, offset,Pre),
        singlepostModel.getCountPostwithTag(nametag,Pre)
      ]).then(([rows, count_rows]) => {
        async function getTagPost(p) {
          var post = [];
          for (let t of p) {
            try {
              var Tag = await singlepostModel.getTagPost(t.IDBaiViet);
              post.push({
                Content: t,
                Tag: Tag
              });
            }
            catch (e) {
              console.log(e);
            }
          }
          return post;
        }
        getTagPost(rows)
        .then(r=>{
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
        var pagination;
        if (nPages == 1) pagination = false;
        else pagination = true;
        res.render('List_Post_withTag', {
          css: '/stylesheets/index.css',
          style: '/stylesheets/style.css',
          Nametag: check,
          Post: r,
          pages: pages,
          checkPre: checkPre,
          checkNext: checkNext,
          //user: req.user
          pagination
        });
        })
        
      }).catch(next);
    }
    else {
      res.render('404', { layout: false });
    }

  }
  catch (err) {
    console.log(err);
  }
});



router.post('/comment/:IDBaiViet', async (req, res, next) => {
  var IDPost = req.params.IDBaiViet;
  var Comment = req.body.cmt;
  // var Cat = req.params.KhongDauCha;
  // var SubCat = req.params.KhongDauCon;
  // var Title = req.params.TieuDe_KhongDau;
  
  if (req.user) {
    var IDUser = req.user.ID;
    console.log(IDPost, Comment, IDUser);
    commentModel.commentPost(IDPost).then(r=>{
      var Cat = r[0].Cat;
      var SubCat = r[0].SubCat;
      var Title = r[0].Title;
      singlepostModel.AddComment(IDPost, IDUser, Comment);
      res.redirect(`/${Cat}/${SubCat}/${IDPost}/${Title}`);
    }).catch(next);
    // singlepostModel.AddComment(IDPost, IDUser, Comment);
    // res.redirect(`/${Cat}/${SubCat}/${IDPost}/${Title}`);
  }
  else {
    res.redirect(`/${Cat}/${SubCat}/${IDPost}/${Title}`);
  }
});

//Details Tai Khoan 
router.get('/Mua-tai-khoan', (req, res, next) => {
  var IDUser = req.user.ID;
  var Cart;
  paymentModel.getdetailcard(IDUser).then(temp => {
    Cart = temp[0];
    console.log(temp);
    console.log(Cart);
    res.render('PurchasePremium', {
      cart: Cart,
      css: '/stylesheets/index.css',
      style: '/stylesheets/style.css',
    });
  }).catch(err => { });

});
//Nap Tien
router.post('/Mua-tai-khoan/Money', (req, res, next) => {
  var IDUser = req.user.ID;
  var Money = req.body.money;
  if (isNaN(Money) === false) {
    paymentModel.addmoney(IDUser, Money).then(temp => {
      res.redirect('/Mua-tai-khoan');
    }).catch(err => {
      res.redirect('/Mua-tai-khoan');
    });
  }
  // if(isNaN(Money)===true)
  // {
  //     res.redirect('/Mua-tai-khoan');
  // }
});
//Mua goi premium
router.get('/Mua-tai-khoan/buyprepack', (req, res, next) => {
  var IDUser = req.user.ID;
  paymentModel.buypremiumpack(IDUser).then(temp => {
    if (temp[0].Temp === 1) {
      res.send('1');
    }
    if (temp[0].Temp === 0) {
      res.send('0');
    }
  }).catch(err => {
  });
})
//Tao the lien ket
router.post('/Mua-tai-khoan/creditcard', (req, res, next) => {
  var IDUser = req.user.ID;
  var IDCard = req.body.cardid;
  console.log(IDCard);
  paymentModel.linkcreditcard(IDUser, IDCard).then(temp => {
    console.log(temp[0]);
    if (temp[0].temp === 1) {
      console.log('1');
      res.redirect('/Mua-tai-khoan');
    }
    if (temp[0].temp === 0) {
      res.redirect('/Mua-tai-khoan');
      console.log('2');
    }
  }).catch(err => {
  });
})

// router.post('/:IDBaiViet/comment/:IDBinhLuan', async (req, res, next) => {
//   var IDPost = req.params.IDBaiViet;
//   var IDComment = req.params.IDBinhLuan;
//   console.log(IDComment);
//   var IDUser = req.user.ID;

//   singlepostModel.getCommentPost(IDPost).then(temp => {
//     console.log(IDComment, temp);
//     for (var i = 0; i < temp.length; i++) {
//       if (temp[i].IDBinhLuan == IDComment) {
//         singlepostModel.LikeOrDislikeComment(IDUser, IDComment);
//         res.redirect(`/${temp[i].KhongDauCha}/${temp[i].KhongDauCon}/${temp[i].IDBaiViet}/${temp[i].TieuDe_KhongDau}`);
//       }
//     }
//   }).catch(err => { })



// });

//page danh sach bai viet cua chuyen muc cha
router.get('/:TenCM', async (req, res, next) => {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var NameCats = req.params.TenCM;
  try {
    var Feature = await singlepostModel.getFeaturePost(Pre);
    var NameCat = await CategoriesModel.getNameCategory(NameCats);
    if (NameCat.length > 0) {
      var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 2;
      var offset = (page - 1) * limit;

      Promise.all([
        singlepostModel.getPostfromMainCategories(NameCats, limit, offset,Pre),
        singlepostModel.getCountPostfromMainCat(NameCats,Pre),
      ]).then(([rows, count_rows]) => {
        async function getTagPost(p) {
          var post = [];
          for (let t of p) {
            try {
              var Tag = await singlepostModel.getTagPost(t.IDBaiViet);
              post.push({
                Content: t,
                Tag: Tag
              });
            }
            catch (e) {
              console.log(e);
            }
          }
          return post;
        }
        getTagPost(rows)
          .then(r => {
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
            res.render('Category', {
              css: '/stylesheets/index.css',
              style: '/stylesheets/style.css',
              Featurepost: Feature.slice(0, 3),
              NameCat: NameCat,
              Post: r,
              // Post: rows,
              pages: pages,
              checkPre: checkPre,
              checkNext: checkNext
              //user: req.user,
            });
          })
          .catch(next);
      }).catch(next);
    }
    else {
      res.render('404', { layout: false });
    }
  } catch (err) {
    console.log(err);
  }
});
//Page danh sach bai viet cua chuyen muc con
router.get('/:TenCm/:TensubCm', async (req, res) => {
  var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(now);
  if (req.user) {
    var NgayHH = req.user.NgayHetHan;
    if (req.user.PhanHe == 'PH4' && req.user.NgayHetHan > now) {
      var Pre = 1;
    }
    else {
      var Pre = 0;
    }
  }
  else {
    var Pre = 0;
  }
  var TensubCm = req.params.TensubCm;
  try {
    var Feature = await singlepostModel.getFeaturePost(Pre);
    var NameCat = await CategoriesModel.getNameCategory(TensubCm);
    if (NameCat.length > 0) {
      // var Post= await singlepostModel.getPostfromCategories(TensubCm);
      var page = req.query.page || 1;
      if (page < 1) page = 1;

      var limit = 2;
      var offset = (page - 1) * limit;


      Promise.all([
        singlepostModel.getPostfromCategories(TensubCm, limit, offset,Pre),
        singlepostModel.getCountPostCat(TensubCm,Pre),
      ]).then(([rows, count_rows]) => {
        async function getTagPost(p) {
          var post = [];
          for (let t of p) {
            try {
              var Tag = await singlepostModel.getTagPost(t.IDBaiViet);
              post.push({
                Content: t,
                Tag: Tag
              });
            }
            catch (e) {
              console.log(e);
            }
          }
          return post;
        }
        getTagPost(rows)
          .then(r => {
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
              Post: r,
              checkPre,
              checkNext
              //user: req.user
            });
          }).catch(next);
      })
        .catch(err => {
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
      var Relatepost= await singlepostModel.GetRelatePost(Id);
      singlepostModel.IncreaseViewPost(Id);

      // console.log(CommentPost);
      res.render('Single_Post', {
        css: '/stylesheets/index.css',
        style: '/stylesheets/style.css',
        DetailPost: DetailPost,
        TagPost: TagPost,
        CommentPost: CommentPost,
        //user: req.user
        Relatepost:Relatepost
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