var express = require('express');
var router = express.Router();
var multer = require('multer');
var checkLogin=require('../middleware/check');
var MongoClient = require('mongodb').MongoClient;
var { ObjectID } = require('mongodb');
var url = "mongodb://localhost:27017/";

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

router.get('/projects', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('ourprojects').findOne(function (err, result1) {
      expertise = result1;
    });

    var expertiseitem = [];
    dbo.collection('ourprojectsitem').find().sort({'_id':-1}).toArray(function (err, result2) {
      expertiseitem = result2;
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
     
      if (err) { return };
      console.log(err);
      res.render('admin/home/oProject_show', { title: "Our Projects", opt: result,  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, pagedata: expertise, expertiseitem: expertiseitem, 'msg': '' });
    });
  });

});


router.get('/projectsform', checkLogin, function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('ourprojects').find().toArray(function (err, result1) {
      expertise = result1;
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
     
      if (err) { return };
      console.log(err);
      res.render('admin/home/oProject', { title: "Our Projects", headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt: result, pagedata: expertise, 'msg': '' });
    });
  });
});


router.post('/projects', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
      dbo.collection("ourprojects").deleteMany();
  });

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var myobj = {
      title: req.body.title.trim(),
      name: req.body.name.trim(),
      description: req.body.description.trim()

    };

    dbo.collection("ourprojects").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document ourprojects inserted");
      // db.close();
    });
  });



  return res.redirect('/projects');
});


router.get('/ourprojectsitemform', async function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
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
     
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/home/oProject_item', { title: "Our Projects Item",  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt: result, updatearr: [], 'msg': '' });
    });
  });
});


router.post('/ourprojectsitem',upload.single('userPhoto'), async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    const file = req.file;
        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage.trim();
     }
      if(file && !file.length) {
          imagepath = file.path.trim();
      }


    var myobj = {
      name: req.body.name.trim(),
      description: req.body.description.trim(),
      image: imagepath
    };

    dbo.collection("ourprojectsitem").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document ourprojectsitem inserted");
      // db.close();
    });
  });

  return res.redirect('/projects');
});


router.get('/ourprojectsitemedit/:id', function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    var aid = req.params.id;

    var updatearr = [];
    dbo.collection('ourprojectsitem').findOne({ "_id": ObjectID(aid) }, function (err, result) {

      updatearr = result;

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
   
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/home/oProject_item', { title: "Our Projects Update",  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, updatearr: updatearr, opt: result, 'msg': '' });
    });
  });

});


router.post('/ourprojectsitemupdate/:id', upload.single('userPhoto'), async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    const file = req.file;
        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage.trim();
     }
      if(file && !file.length) {
          imagepath = file.path.trim();
      }

    var myobj = {
      $set: {
        name: req.body.name.trim(),
        description: req.body.description.trim(),
        image: imagepath
      }
    };

    var collection = dbo.collection('ourprojectsitem');

    collection.updateOne({ "_id": ObjectID(req.params.id) }, myobj, function (err, result) {
      if (err) { throw err; }


      res.redirect('/projects');
    });

  });
  // return res.redirect('/achievement');
});

// achivementitemremove

router.get('/ourprojectsitemremove/:id', async function (req, res, next) {
  
  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    dbo.collection("ourprojectsitem").remove({ _id: ObjectID(req.params.id) });
  });
  res.redirect('/projects');
});


router.get('/ourprojects-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('ourprojects').findOne(function (err, result) {
   
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});


router.get('/ourprojectsitem-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('ourprojectsitem').find().toArray(function (err, result) {
         
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});

router.get('/ourprojectsitem-show-limit', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('ourprojectsitem').find().sort({'_id': -1}).limit(9).toArray(function (err, result) {
      
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});


router.get('/project/:id', function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    var aid = req.params.id;
    dbo.collection('ourprojectsitem').findOne({ "_id": ObjectID(aid) }, function (err, result) {   
      res.status(200).json(result);
    });

  });

});


module.exports = router;