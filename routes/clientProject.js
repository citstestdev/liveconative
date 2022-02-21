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

router.get('/clientProject', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('tbclientproject').findOne(function (err, result1) {
      expertise = result1;
    });

    var expertiseitem = [];
    dbo.collection('tbclientinfo').find().sort({'_id':-1}).toArray(function (err, result2) {
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
      res.render('admin/home/ocProject_show', { title: "Client Project", opt: result, headermenu:headermenu_dynamic,settingmenu:setting_dynamic, pagedata: expertise, expertiseitem: expertiseitem, 'msg': '' });
    });
  });

});


router.get('/clientform', checkLogin, function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('tbclientproject').find().toArray(function (err, result1) {
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
      res.render('admin/home/ocProject', { title: "Client Project", headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt: result, pagedata: expertise, 'msg': '' });
    });
  });
});


router.post('/clientProject', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
      dbo.collection("tbclientproject").deleteMany();
  });

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var myobj = {
      title: req.body.title.trim(),
      name: req.body.name.trim(),
      description: req.body.description.trim()

    };

    dbo.collection("tbclientproject").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document process inserted");
      // db.close();
    });
  });

  return res.redirect('/clientProject');
});


router.get('/clientprojectform', async function (req, res, next) {

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
      res.render('admin/home/ocProject_item', { title: "Client Project Item",  headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt: result, updatearr: [], 'msg': '' });
    });
  });
});


router.post('/clientprojectitem',upload.single('userPhoto'), async function (req, res, next) {

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
      num: req.body.num.trim(),
      image: imagepath
    };

    dbo.collection("tbclientinfo").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document clientinfo inserted");
      // db.close();
    });
  });

  return res.redirect('/clientProject');
});


router.get('/clientprojectedit/:id', function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    var aid = req.params.id;

    var updatearr = [];
    dbo.collection('tbclientinfo').findOne({ "_id": ObjectID(aid) }, function (err, result) {

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
      res.render('admin/home/ocProject_item', { title: "Client Project Item", headermenu:headermenu_dynamic,settingmenu:setting_dynamic, updatearr: updatearr, opt: result, 'msg': '' });
    });
  });

});


router.post('/clientprojectupdate/:id', upload.single('userPhoto'), async function (req, res, next) {

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
        num: req.body.num.trim(),
        image: imagepath
      }
    };

    var collection = dbo.collection('tbclientinfo');

    collection.updateOne({ "_id": ObjectID(req.params.id) }, myobj, function (err, result) {
      if (err) { throw err; }


      res.redirect('/clientProject');
    });

  });
  // return res.redirect('/achievement');
});

// achivementitemremove

router.get('/clientprojectremove/:id', async function (req, res, next) {
  
  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    dbo.collection("tbclientinfo").remove({ _id: ObjectID(req.params.id) });
  });
  res.redirect('/clientProject');
});




router.get('/csliderform', async function (req, res, next) {

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
      res.render('admin/home/ocsliderform', { title: "Client Slider",  headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt: result, updatearr: [], 'msg': '' });
    });
  })
});


router.post('/addslideritem',upload.single('userPhoto'), async function (req, res, next) {

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
      author: req.body.author.trim(),
      videourl: req.body.videourl.trim(),
      description: req.body.description.trim(),
      image: imagepath
    };

    dbo.collection("tbclientslider").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document clientinfo inserted");
      // db.close();
    });
  });

  return res.redirect('/clientProject');
});



router.get('/cp-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('tbclientproject').findOne(function (err, result) {
  
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});


router.get('/cpi-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('tbclientinfo').find().toArray(function (err, result) {
      
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});

router.get('/cps-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('tbclientslider').find().toArray(function (err, result) {
    
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});


module.exports = router;