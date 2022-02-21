var express = require('express');
var router = express.Router();
var multer  =   require('multer');
var checkLogin = require('../middleware/check');

var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
var $ = require('jquery');

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


router.get('/startpjt', checkLogin, async function(req, res, next) {
  

    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var digitallegaciesdata = [];
       dbo.collection('startprojects').findOne(function (err, result) {
           digitallegaciesdata = result;
        });


        var headermenu_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {
          if (err) {return};
          console.log(err);
           headermenu_dynamic = result;
        });

      var setting_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
          if (err) {return};
          console.log(err);

           setting_dynamic = result;
      });

       dbo.collection('option').findOne(function (err, result) {
          if (err) {return};
          console.log(err);
             res.render('admin/home/startproject_show', { title:"Start Project",  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt:result,pagedata:digitallegaciesdata, 'msg':''});
        });
    });

});



router.get('/createsp', checkLogin, async function(req, res, next) {
  
  // req.flash('success_msg', 'You are registered and can now log in');
  
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");

       var headermenu_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {

          if (err) {return};
          console.log(err);
           headermenu_dynamic = result;
        });

      var setting_dynamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
    
          if (err) {return};
          console.log(err);

           setting_dynamic = result;
      });

       dbo.collection('option').findOne(function (err, result) {
  
          if (err) {return};
          console.log(err);
             res.render('admin/home/startproject', { title:"Start Project",  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt:result, 'msg':''});
        });
    });
});


router.post('/addstartpjt', checkLogin,  upload.array('userPhoto'), async function(req, res, next) {
   
      const Spmodel = require('../models/Startprojectmodel');

      await Spmodel.deleteMany();

      // const file = req.file;
      const file = req.files;
      
      var imagearr = []; 
      file.forEach(element => {
      var pro = {
        imagename: element.filename,
        url: 'http://localhost:4000/uploads/' + element.filename
      };
      imagearr.push(pro);
      });

      var myobj = new Spmodel({ 
        name: req.body.name.trim(),
        title: req.body.title.trim(), 
        btnname: req.body.btnname.trim(),
        description: req.body.description.trim(),
        image : imagearr
      });
      await myobj.save();
      
    return res.redirect('/startpjt');
});


router.get('/startpjt-show', function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('startprojects').findOne(function (err, result) {
         res.status(200).send(result);
       });
    });
});


module.exports = router;