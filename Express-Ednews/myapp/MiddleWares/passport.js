var LocalStrategy   = require('passport-local').Strategy;
const loginModel = require('../Model/login.model');
var moment = require('moment');
var request = require('request');
const bCrypt = require('bcrypt');
const saltRounds = 10;

var FacebookStrategy = require('passport-facebook').Strategy;
// Lấy thông tin những giá trị auth
var configAuth = require('./auth');

module.exports = function(passport) {

   passport.serializeUser(function(user, done) {
        done(null, user);
    });

    passport.deserializeUser(function(user, done) {
        done(null, user);
    });

   passport.use('local-login', new LocalStrategy({
        usernameField : 'email',
        passwordField : 'pass',
        passReqToCallback : true
    },
    function(req, email, pass, done) {
        loginModel.getUserWithEmail(email).then(user =>{
            if(!user.length){
                return done(null, false, req.flash('loginMessage', 'Tài khoản không tồn tại'));
            }

            if(user[0].TinhTrang != 'Còn sử dụng'){
                return done(null, false, req.flash('loginMessage', 'Tài khoản đã bị khóa'));
            }
           
            if(!bCrypt.compareSync(pass, user[0].Password)){
                return done(null, false, req.flash('loginMessage', 'Mật khẩu không đúng'));
            }     

            return done(null, user[0]);

        }).catch(err =>{
            console.log(err);
            return done(null, false, req.flash('loginMessage', 'Lỗi'));
        });

    }));


    passport.use('local-signup', new LocalStrategy({
        usernameField : 'email',
        passwordField : 'pass',
        passReqToCallback : true 
    },
    function(req, email, pass, done) {
        if(req.body['g-recaptcha-response'] === undefined || req.body['g-recaptcha-response'] === '' || req.body['g-recaptcha-response'] === null) {
            return done(null, false, req.flash('signupMessage', 'Vui lòng chọn Captcha'));
          }
          
        //   Captcha chỉ tích vào ô:
        //   var secretKey = "6LdSAKkUAAAAALVtWgwcv80nTqhREVYyXWHGNzYw";  

          // Captcha chọn hình:
          var secretKey = "6LfqAqkUAAAAAP8my3MTQ7tMxkUxkXBK98qghREQ";   
          var verificationUrl = "https://www.google.com/recaptcha/api/siteverify?secret=" + secretKey + "&response=" + req.body['g-recaptcha-response'] + "&remoteip=" + req.connection.remoteAddress;
          request(verificationUrl,function(error,response,body) {
            body = JSON.parse(body);
            if(body.success !== undefined && !body.success) {
                return done(null, false, req.flash('signupMessage', 'Captcha không đúng'));
            }
          });

        loginModel.getUserWithEmail(email).then(rows =>{
            if(rows.length){
                return done(null, false, req.flash('signupMessage', 'Email đã tồn tại'));
            }
            else{
                loginModel.getUserWithPhonenumber(req.body.phonenumber).then(rows =>{
                    if(rows.length){
                        return done(null, false, req.flash('signupMessage', 'SĐT đã tồn tại'));
                    }
                    else{
                        var user = {
                            HoTen: req.body.fullname,
                            SDT: req.body.phonenumber,
                            NgaySinh: moment(req.body.birthday,'DD/MM/YYYY').format('YYYY-MM-DD'),
                            GioiTinh: req.body.gender,
                            Email: email,
                            Password: bCrypt.hashSync(pass, bCrypt.genSaltSync(saltRounds)),
                            NgayDangKy: moment().format('YYYY-MM-DD hh:mm:ss'),
                            // NgayHetHan:moment().add(7, 'days').format('YYYY-MM-DD hh:mm:ss'),
                            // TinhTrang: 'Còn hạn'
                        }
                        console.log(user);
                            loginModel.addUser2(user.HoTen, user.SDT, user.NgaySinh, user.GioiTinh,user.Email, 
                                user.Password,user.NgayDangKy).then(id =>{
                                return done(null, true, req.flash('signupMessage', 'Đăng ký thành công'));
                            }).catch(err => {
                                return done(err);
                            })
                    }                    
                }).catch(err=>{
                    return done(err);
                })
            }
        }).catch(err =>{
            return done(err);
        })
    }
    ));

  
    // =========================================================================
    // FACEBOOK ================================================================
    // =========================================================================
    passport.use(new FacebookStrategy({
        // điền thông tin để xác thực với Facebook.
        // những thông tin này đã được điền ở file auth.js
        clientID: configAuth.facebookAuth.clientID,
        clientSecret: configAuth.facebookAuth.clientSecret,
        callbackURL: configAuth.facebookAuth.callbackURL,
        profileFields: ['email', 'gender','locale', 'displayName']
        // profileFields: ['id','displayName','email','first_name','last_name','middle_name']
    },
    // Facebook sẽ gửi lại chuối token và thông tin profile của user
    function (token, refreshToken, profile, done) {
        console.log(profile);
        var user = {
            ID: 0,
            IDFB: profile._json.id,
            HoTen: profile._json.name,
            PhanHe:'PH5'
        }
        console.log(user);
        return done(null, user);
        // asynchronous
        // process.nextTick(function () {
        //     // tìm trong db xem có user nào đã sử dụng facebook id này chưa
        //     User.findOne({'facebook.id': profile.id}, function (err, user) {
        //         if (err)
        //             return done(err);
        //         // Nếu tìm thấy user, cho họ đăng nhập
        //         if (user) {
        //             return done(null, user); // user found, return that user
        //         } else {
        //             // nếu chưa có, tạo mới user
        //             var newUser = new User();
        //             // lưu các thông tin cho user
        //             newUser.facebook.id = profile.id;
        //             newUser.facebook.token = token;
        //             newUser.facebook.name = profile.name.givenName + ' ' + profile.name.familyName; // bạn có thể log đối tượng profile để xem cấu trúc
        //             newUser.facebook.email = profile.emails[0].value; // fb có thể trả lại nhiều email, chúng ta lấy cái đầu tiền
        //             // lưu vào db
        //             newUser.save(function (err) {
        //                 if (err)
        //                     throw err;
        //                 // nếu thành công, trả lại user
        //                 return done(null, newUser);
        //             });
        //         }
        //     });
        // });
    }));
};