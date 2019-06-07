module.exports = (req, res, next) => {
    if(req.user){
        if(req.user.PhanHe == 'PH4' || req.user.PhanHe == 'PH5'){
        res.redirect('/');
        }
        else{
            if(req.user.PhanHe != 'PH2'){
                res.redirect('/admin');
            }
            else next();
        }
    }
    else res.redirect('/');
  }
