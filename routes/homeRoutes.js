var express = require('express');
var router = express.Router();
var multer  =   require('multer');
const session = require('express-session');
var checkLogin=require('../middleware/check');
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
      
      var homepage = [];
       dbo.collection('homes').findOne(function (err, result) {
           homepage = result;
        });
        
      var headermenu_dynamic= [];  
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
          // console.log(result);
          if (err) {return};
          console.log(err);
    
             res.render('admin/home/home', { title:"home", headermenu:headermenu_dynamic, settingmenu:setting_dynamic,opt:result,pagedata:homepage, 'msg':''});
        });
    });

});

router.get('/home', checkLogin,  function(req, res, next) {

   // console.log("ssssssss++++++++++++++++++++++++",req);
    // console.log("rrrrrrrr",session.massage);
    // if(checkLogin){
    //   console.log("gg");
    // }
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       // req.session.context ='your context here' ;

        // if()

      
      var homepage = [];
       dbo.collection('homes').findOne(function (err, result) {
           homepage = result;
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
          // console.log(result);
          if (err) {return};
          console.log(err);
          
           res.render('admin/home/home', { title:"home", headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt:result,pagedata:homepage,  'msg':session.massage});
        });
    });

        setTimeout(function() {
           session.massage = '';
        }, 2000);
    // res.render('setting', {opt:result});
});

router.post('/home', upload.single('userPhoto'), async function(req, res, next) {


  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
      dbo.collection("homes").deleteMany();
  });

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    
      const file = req.file;
      // console.warn("fileee",file);

        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage;
     }
      if(file && !file.length) {
          imagepath = file.path;
      }

    var myobj = {
      name: req.body.name.trim(),
      title: req.body.title.trim(),
      description: req.body.description.trim(),
      image : imagepath
    };
    

    dbo.collection("homes").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document review inserted");
      session.massage = "Home updated successfully";
      // req.session.context ='your context here' ;
      // db.close();
    });
  });

  return res.redirect('/home');
});

router.get('/home-show', function(req, res, next) {

    var fullUrl = req.protocol + '://' + req.get('host');
    
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       var reviewdata = [];
       dbo.collection('homes').findOne(function (err, result1) {
           reviewdata = result1;
         // reviewdata['review'] = result;
         res.status(200).send(result1);
       });
    });
});


module.exports = router;