module.exports = (req, res, next) => {
  var d =new Date();
  var n=d.getDate();
  if (req.user) {
    res.locals.isAuthenticated = true;
    res.locals.user = req.user;
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
    if(req.user.PhanHe='PH4')
    {
      res.locals.isSubscriber=true;
    }
    if((req.user.PhanHe=='PH4')&&(req.user.NgayHetHan>n) ){
      res.locals.isPremium=true;
    }
  }
  next();
}
