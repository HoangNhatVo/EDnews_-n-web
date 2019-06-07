module.exports = (req, res, next) => {
    if (req.user) {
      res.locals.isAuthenticated = true;
      res.locals.user = req.user;
      if(req.user.PhanHe != 'PH1'){
        res.locals.isAdmin = true;
      }
    }
  
    next();
  }
  