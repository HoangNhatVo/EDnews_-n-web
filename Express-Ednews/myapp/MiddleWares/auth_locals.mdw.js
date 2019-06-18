const loginModel = require('../Model/login.model');
module.exports = (req, res, next) => {
  var d =new Date();
  var n=d.getDate();
  if (req.user) {
    res.locals.isAuthenticated = true;
    res.locals.user = req.user;
    if(req.user.ID != 0){
    loginModel.getUserWithID(req.user.ID).then(r=>{res.locals.user=r[0];})
    }
    res.locals.user2 = req.user;
    if(req.user.ID != 0){
    loginModel.getUserWithID(req.user.ID).then(r=>{res.locals.user2=r[0];})
    }
    if(req.user.PhanHe != 'PH4' && req.user.PhanHe!='PH5'){
      res.locals.isAdmin = true;
    }
    if(req.user.PhanHe == 'PH1'){
      res.locals.isAdministrator = true;
    }
    if(req.user.PhanHe == 'PH2'){
      res.locals.isWriter = true;
    }
    if(req.user.PhanHe == 'PH3'){
      res.locals.isEditor = true;
    }
    if(req.user.PhanHe=='PH5'){
      res.locals.isGuest=true;
    }
    if(req.user.PhanHe=='PH4')
    {
      res.locals.isSubscriber=true;
    }
    if((req.user.PhanHe=='PH4')&&(req.user.NgayHetHan>n) ){
      res.locals.isPremium=true;
    }
    if(req.flash('UpdateInfoSuccess').length !=0){
      loginModel.getUserWithID(req.user.ID).then(r=>{
        res.locals.user=r[0];
      })
    }
    if(req.flash('UpdateInfoSuccess1').length !=0){
      loginModel.getUserWithID(req.user.ID).then(r=>{
        res.locals.user2=r[0];
      })
    }
  }
  next();
}
