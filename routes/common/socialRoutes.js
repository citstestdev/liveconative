var express = require('express');
var router = express.Router();
var multer  =   require('multer');
var checkLogin = require('../../middleware/check');
let alert = require('alert'); 

var MongoClient = require('mongodb').MongoClient;
var { ObjectID } = require('mongodb');
var url = "mongodb://localhost:27017/";


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



router.get('/social', checkLogin, async function(req, res, next) {

    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var socials = [];
       dbo.collection('socials').find().sort({'_id':-1}).toArray(function (err, result1) {
           socials = result1;
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
          // console.log(result);
          if (err) {return};
          console.log(err);

           res.render('admin/home/socialmedia', { title:"Social Media", headermenu:headermenu_dynamic,settingmenu:setting_dynamic,  opt:result,pagedata:socials, error:''});
        });
    });
});



router.post('/social', checkLogin, upload.single('userPhoto'), async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    
    console.log("result",req.body);


    const file = req.file;
        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage;
     }
      if(file && !file.length) {
          imagepath = file.path;
      }

    var myobj = {
      title: req.body.title.trim(),
      socialurl: req.body.socialurl.trim(),
      description: req.body.description.trim(),
      image : imagepath
    };

    dbo.collection("socials").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("Document social inserted");

    });
  });
   
  await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var socials = [];
       dbo.collection('socials').find().sort({'_id':-1}).toArray(function (err, result1) {
           socials = result1;
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
          // console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           // res.status(200).json(result);
           res.render('admin/home/socialmedia', { title:"Social Media", headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt:result,pagedata:socials, error:'Social media inserted successfully'});
        });
    });

});


router.get('/social/:id', checkLogin, function(req, res, next) {
  
  
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var aid = req.params.id;

      var updatearr = [];
      dbo.collection('socials').findOne({ "_id": ObjectID(aid) }, function (err, result) {
 
        updatearr = result;
 
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
           // res.render('header')
           res.render('admin/home/socialupdate', { title:"Social Edit",   headermenu:headermenu_dynamic,settingmenu:setting_dynamic,  opt:result, updatearr: updatearr, error:''});
        });
    });
    // res.render('setting', {opt:result});
});




router.post('/social/:id', checkLogin,  upload.single('userPhoto'), async function (req, res, next) {

  var person = req.body;
  const newObjectId = new ObjectID(person._id);
  // var good = newObjectId.str;
  const file = req.file;
  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");


      const file = req.file;
        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage;
     }
      if(file && !file.length) {
          imagepath = file.path;
      }

    var myobj = {
      $set: {
      title: req.body.title.trim(),
      socialurl: req.body.socialurl.trim(),
      description: req.body.description.trim(),
      image : imagepath
      }
    };

    var collection = dbo.collection('socials');

    collection.updateOne({ "_id": ObjectID(req.params.id) }, myobj, function (err, result) {
      if (err) { throw err; }

    });

  });

   await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
        var aid = req.params.id;
      var socials = [];
       dbo.collection('socials').find().sort({'_id':-1}).toArray(function (err, result1) {
           socials = result1;
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

      var updatearr = [];
      dbo.collection('socials').findOne({ "_id": ObjectID(aid) }, function (err, result) {

        updatearr = result;

      });


       dbo.collection('option').findOne(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           // res.status(200).json(result);
           res.render('admin/home/socialupdate', { title:"Social Media", headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt:result,pagedata:socials, updatearr: updatearr,  error:'Social media updated successfully'});
        });

    });
  
});

router.get('/socialremove/:id', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    dbo.collection("socials").remove({ _id: ObjectID(req.params.id) });
  });
   
      await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var socials = [];
       dbo.collection('socials').find().sort({'_id':-1}).toArray(function (err, result1) {
           socials = result1;
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
          // console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           // res.status(200).json(result);
           res.render('admin/home/socialmedia', { title:"Social Media",   headermenu:headermenu_dynamic,settingmenu:setting_dynamic,  opt:result,pagedata:socials, error:'Social media deleted successfully'});
        });
    });


});



module.exports = router;