var express = require('express');
var router = express.Router();
var multer  =   require('multer');
var checkLogin=require('../../middleware/check');
var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";

router.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept,Authorization"
  );
  res.header('Access-Control-Allow-Methods', 'GET,PUT,PATCH,POST,DELETE,OPTIONS');
  next();
});



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



router.get('/show-social', async function(req, res, next) {
  
    var fullUrl = req.protocol + '://' + req.get('host');
    
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       var footerarr = [];
       dbo.collection('option').findOne(function (err, result1) {
           footerarr = result1;
            // return result;
            res.status(200).json(result1);
        });

    });

});


router.get('/social-media', async function(req, res, next) {

    var fullUrl = req.protocol + '://' + req.get('host');
    
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('socials').find().toArray(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});

router.get('/', async function(req, res, next) {

    var fullUrl = req.protocol + '://' + req.get('host');

    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       
        var headermenu_dainamic = [];  
       dbo.collection('menus').find({ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]}).sort({'index':1}).toArray(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
           headermenu_dainamic = result;
        });
       

       dbo.collection('option').findOne(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           res.render('header', { title : "Guru", headermenu:headermenu_dainamic ,opt:result});
        });
    });
  
});


module.exports = router;
