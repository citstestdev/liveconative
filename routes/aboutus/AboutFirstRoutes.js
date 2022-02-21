var express = require('express');
var router = express.Router();
var multer = require('multer');
var checkLogin=require('../../middleware/check');
var alert = require('alert');
// var serviceModelData = require('../models/ServiceModel'); 
var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
var { ObjectID } = require('mongodb');

router.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept,Authorization"
  );
  res.header('Access-Control-Allow-Methods', 'GET,PUT,PATCH,POST,DELETE,OPTIONS');
  next();
});


router.use('/uploads', express.static(__dirname + '/uploads'));
var storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, 'uploads')
  },
  filename: function (req, file, cb) {
    cb(null, new Date().toISOString() + file.originalname)
  }
})

var upload = multer({ storage: storage })


router.get('/aboutus', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var aboutarr = [];
    dbo.collection('abouts').findOne(function (err, result1) {
      aboutarr = result1;
      // return result;
    });

    var headermenu_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
           headermenu_dynamic = result;
        });

      var setting_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);

           setting_dynamic = result;
      });


    dbo.collection('option').findOne(function (err, result) {
      console.log(result);
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/aboutus/about_us', { title: "About Us", headermenu:headermenu_dynamic,settingmenu:setting_dynamic, pagedata: aboutarr, opt: result, 'msg': '' });
    });
  });
});


router.get('/api/about-us',  function (req, res, next) {

   MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    dbo.collection('abouts').findOne(function (err, result) {
      console.log(result);
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.status(200).json(result);
    });
  });
});


router.post('/aboutus', upload.single('userPhoto'), async function(req, res, next) {
   
    const aboutmodel = require('../../models/Aboutmodel');

      const file = req.file;
       var imagepath = '';
       if(req.body.oldimage != ''){
        imagepath = req.body.oldimage;
       }
       if(file && !file.length) {
            imagepath = file.path;
       }

    var message = "";

    if(req.body.id == ''){

      var myobj = new aboutmodel({ 
        title: req.body.title.trim(), 
        description: req.body.description.trim(),
        image : imagepath
      });
      await myobj.save();
     
      message = 'About us add successfully';
         
    }else{
  
          await MongoClient.connect(url, function (err, db) {
          if (err) throw err;
          var dbo = db.db("conative");
          dbo.collection('abouts').findOne(function (err, result) {
            console.log(result);
            if (err) { return };

            var myobj = {
              $set: {
                title: req.body.title.trim(), 
                description: req.body.description.trim(),
                image : imagepath
              }
            };

             var collection = dbo.collection('abouts');
            collection.updateOne({ "_id": ObjectID(result._id) }, myobj, { new:true},function (err, result) {
              if (err) { throw err; }
           
            });
            });
          });

          message = 'About us updated successfully';

    }

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var aboutarr = [];
    dbo.collection('abouts').findOne(function (err, result1) {
      aboutarr = result1;
      // return result;
    });

    var headermenu_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
           headermenu_dynamic = result;
        });

    var setting_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);

           setting_dynamic = result;
      });

    dbo.collection('option').findOne(function (err, result) {
      console.log(result);
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/aboutus/about_us', { title: "About Us",headermenu:headermenu_dynamic,settingmenu:setting_dynamic, pagedata: aboutarr, opt: result, 'msg': message });
    });
  }); 
});

module.exports = router;