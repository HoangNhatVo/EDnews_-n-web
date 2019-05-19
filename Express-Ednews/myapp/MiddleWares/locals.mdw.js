var categoryModel = require('../Model/categories.model');
var singlepostModel = require('../Model/single_post.model');
module.exports = (req, res, next) => {
  res.locals.lcCategories = [];
  categoryModel.allCat().then(rows => {
    let result = rows;
    result.forEach(element => {
      categoryModel.SubCatByMainCat(element).then(row => {

        res.locals.lcCategories.push({
          mainCat: element,
          subCat: row
        });
      }).catch(err => {
        console.log(err);
      });
    });
    singlepostModel.getNewPost().then(result => {
      res.locals.lcNewPost = result.slice(0,6);
    });
    next();
  });

};