var multer = require('multer');
const createnewModel = require('../Model/createnew.model');

var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './public/images/');
  },
  filename: function (req, file, cb) {
    var filename = file.originalname;
    createnewModel.getPictureWithName(filename).then(r=>{
      if(r.length){
        createnewModel.countPicture().then(count=>{
          filename = ""+ count[0].SL + filename;
          // console.log('filename',filename);
          cb(null, filename);
        }).catch(err=>{
          console.log(err);
        })
      }
      else{
        cb(null, filename);
      }
    }).catch(err=>{
      console.log(err);
    })
  }
})

var upload = multer({ storage });

module.exports = function (app) {
  app.post('/upload', (req, res, next) => {
    upload.single('fuMain')(req, res, err => {
      if (err) {
        return res.json({
          error: err.message
        });
      }
      res.json({ message: 'Files Uploaded!'});
    })
  })
}