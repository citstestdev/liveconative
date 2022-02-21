var express = require('express');
var router = express.Router();
var multer  =   require('multer');
var checkLogin=require('../../middleware/check');
var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
var { ObjectID } = require('mongodb');

router.use('/uploads', express.static(__dirname +'/uploads'));
 var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'uploads')
    },
    filename: function (req, file, cb) {
      cb(null, new Date().toISOString()+file.originalname)
    }
  })
   
var upload = multer({ storage: storage })

router.get('/', checkLogin,  async function(req, res, next) {
  
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
    
        
      var headermenu_dainamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);

           headermenu_dainamic = result;
        });
        var setting_dainamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);

           setting_dainamic = result;
        });

       res.render('sidebar_common', { headermenu:headermenu_dainamic, settingmenu:setting_dainamic});
    });

});


module.exports = router;