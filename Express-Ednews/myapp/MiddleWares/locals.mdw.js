var categoryModel = require('../Model/categories.model');
var singlepostModel = require('../Model/single_post.model');
var moment = require('moment');
module.exports = (req, res, next) => {
  res.locals.lcCategorie = [];
  categoryModel.allCat().then(rows => {
    let result = rows;
    result.forEach(element => {
      categoryModel.SubCatByMainCat(element).then(row => {

        res.locals.lcCategorie.push({
          mainCat: element,
          subCat: row
        });
      }).catch(err => {
        console.log(err);
      });
    });
    var now = moment().format('YYYY-MM-DD hh:mm:ss');
  console.log(req.user);
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
  console.log(Pre);
    singlepostModel.GetMostViewPost(Pre).then(result => {
      res.locals.lcNewPost = result.slice(0,9);
    });
    next();
  });
  
};