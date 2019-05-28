// config/passport.js
var LocalStrategy   = require('passport-local').Strategy;
const loginModel = require('../Model/login.model');
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
        // console.log(user);
        
        done(null, user);
    //    loginModel.getUser(user.email).then(user=>{
        // console.log(user);
    //     // console.log(user[0]);

    //       done(null, user);
    //    }).catch(err => {
    //        console.log(err);
    //    });
    });

   passport.use('local-login', new LocalStrategy({
        // by default, local strategy uses username and password, we will override with email
        usernameField : 'email',
        passwordField : 'pass',
        passReqToCallback : true // allows us to pass back the entire request to the callback
    },
    function(req, email, pass, done) { // callback with email and password from our form
        loginModel.getUser(email).then(user =>{
            // console.log(user);
            
            if(!user.length){
                return done(null, false, req.flash('loginMessage', 'Tài khoản không tồn tại'));
            }
            if(user[0].Password != pass){
                return done(null, false, req.flash('loginMessage', 'Mật khẩu không đúng'));
            }
           
            // if(!bCrypt.compareSync(pass, '$2b$10$rgkFDsD5ZGW0/FBI8pLzTOseNx6Rv0uCkEnmlX1e2vdO3sMJE2326')){
            //     return done(null, false, req.flash('loginMessage', 'Mật khẩu không đúng'));
            // }

           
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

        loginModel.getUser(email).then(rows =>{
            if(rows.length){
                return done(null, false, req.flash('signupMessage', 'Email đã tồn tại'));
            }
            else{
                var newUser = {
                    fullname: req.body.fullname,
                    phonenumber: req.body.phonenumber,
                    birthday: req.body.birthday,
                    gender: req.body.gender,
                    email: email,
                    pass: pass
                    // pass: bCrypt.hashSync(pass, bCrypt.genSaltSync(saltRounds))
                };
                console.log(newUser);
                
                // loginModel.addUser(newUser.fullname, newUser.phonenumber, newUser.birthday, newUser.gender,
                //     newUser.email, newUser.pass).then(id =>{
                //         req.flash('signupMessage', 'Đăng ký thành công');

                //     return done(null, newUser);
                // }).catch(err => {
                //     return done(err);
                // })
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
            HoTen: profile._json.name
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