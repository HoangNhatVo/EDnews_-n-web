module.exports = (req, res, next) => {
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
  }

  next();
}
