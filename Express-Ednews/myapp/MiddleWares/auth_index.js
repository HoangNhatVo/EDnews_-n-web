module.exports = (req, res, next) => {
    if(req.user){
        if(req.user.PhanHe == 'PH4' || req.user.PhanHe == 'PH5'){
        res.redirect('/');
        }
        else next();
    }
    else res.redirect('/');
  }
