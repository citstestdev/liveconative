var express = require('express');
var router = express.Router();
// var multer  =   require('multer');

// router.use('/uploads', express.static(__dirname +'/uploads'));
//  var storage = multer.diskStorage({
//     destination: function (req, file, cb) {
//       cb(null, 'uploads')
//     },
//     filename: function (req, file, cb) {
//       cb(null, new Date().toISOString()+file.originalname)
//     }
//   })
   
//   var upload = multer({ storage: storage })


router.get('/login_old', function(req, res, next) {
  
  var MongoClient = require('mongodb').MongoClient;
  var url = "mongodb://localhost:27017/";
  
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var users = [];
       dbo.collection('users').find().toArray(function (err, result1) {
           users = result1;
            // return result;
        });

       
   var headermenu_dainamic = [];  
       dbo.collection('menus').find({ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]}).sort({'index':1}).toArray(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
           // res.status(200).json(result);
           headermenu_dainamic = result;
           // res.render('showdata', { fullUrl : fullUrl ,people: result})
        });

       dbo.collection('option').findOne(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           res.render('login', { title:"Login", headermenu:headermenu_dainamic, opt:result,pagedata:users, 'mag':''});
        });
    });
    // res.render('setting', {opt:result});
});


module.exports = router;