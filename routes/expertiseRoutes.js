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

router.get('/expertise', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('expertise').findOne(function (err, result1) {
      expertise = result1;
    });

    var expertiseitem = [];
    dbo.collection('expertiseitem').find().sort({'_id':-1}).toArray(function (err, result2) {
      expertiseitem = result2;
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
      if (err) { return };
      console.log(err);
      res.render('admin/home/expertise_show', { title: "Expertise", opt: result, headermenu:headermenu_dynamic, settingmenu:setting_dynamic, pagedata: expertise, expertiseitem: expertiseitem, 'msg': '' });
    });
  });

});


router.get('/expertiseform', checkLogin, function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var expertise = [];
    dbo.collection('expertise').find().toArray(function (err, result1) {
      expertise = result1;
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
      if (err) { return };
      console.log(err);
      res.render('admin/home/expertise', { title: "Expertise", headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt: result, pagedata: expertise, 'msg': '' });
    });
  });
});


router.post('/expertise', checkLogin, async function (req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

    var myobj = {
      title: req.body.title.trim(),
      name: req.body.name.trim(),
      description: req.body.description.trim()

    };

    dbo.collection("expertise").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document expertise inserted");
      // db.close();
    });
  });

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    dbo.collection('expertise').findOne(function (err, result) {
      // console.log(result);
      if (err) { return };
      // console.log("dffds", result._id);
      dbo.collection("expertise").remove({ _id: ObjectID(result._id) });
    });
  });

  return res.redirect('/expertise');
});


router.get('/expertiseitemform', async function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");

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
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/home/expertise_item', { title: "Expertise Item",  headermenu:headermenu_dynamic, settingmenu:setting_dynamic, opt: result, updatearr: [], 'msg': '' });
    });
  });
});


router.post('/expertiseitem',upload.single('userPhoto'), async function (req, res, next) {

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
      name: req.body.name.trim(),
      description: req.body.description.trim(),
      image: imagepath
    };

    dbo.collection("expertiseitem").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document expertiseitem inserted");
      // db.close();
    });
  });

  return res.redirect('/expertise');
});


router.get('/expertiseitemedit/:id', function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    var aid = req.params.id;

    var updatearr = [];
    dbo.collection('expertiseitem').findOne({ "_id": ObjectID(aid) }, function (err, result) {

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
      if (err) { return };
      console.log(err);
      // res.render('header')
      res.render('admin/home/expertise_item', { title: "Expertise Update", headermenu:headermenu_dynamic, settingmenu:setting_dynamic, updatearr: updatearr, opt: result, 'msg': '' });
    });
  });

});


router.post('/expertiseitemupdate/:id', upload.single('userPhoto'), async function (req, res, next) {

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
        name: req.body.name.trim(),
        description: req.body.description.trim(),
        image: imagepath
      }
    };

    var collection = dbo.collection('expertiseitem');

    collection.updateOne({ "_id": ObjectID(req.params.id) }, myobj, function (err, result) {
      if (err) { throw err; }


      res.redirect('/expertise');
    });

  });
  // return res.redirect('/achievement');
});


// achivementitemremove

router.get('/expertiseitemremove/:id', async function (req, res, next) {
  
  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    dbo.collection("expertiseitem").remove({ _id: ObjectID(req.params.id) });
  });
  res.redirect('/expertise');
});


router.get('/expertise-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('expertise').findOne(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});


router.get('/expertiseitem-show', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('expertiseitem').find().toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});

router.get('/expertiseitem-show-limit', async function(req, res, next) {
    var fullUrl = req.protocol + '://' + req.get('host');
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('expertiseitem').find().sort({'_id': -1}).limit(6).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
         res.status(200).json(result);
        });
    });
});

// router.get('/test/:id', function (req, res, next) {

//   MongoClient.connect(url, function (err, db) {
//     if (err) throw err;
//     var dbo = db.db("conative");
//     var aid = req.params.id;

//     var updatearr = [];
//     dbo.collection('expertiseitem').findOne({ "_id": ObjectID(aid) }, function (err, result) {

//       updatearr = result;

//     });

router.get('/singlepage/:id', function (req, res, next) {

  MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    var aid = req.params.id;
    // var updatearr = [];
    dbo.collection('expertiseitem').findOne({ "_id": ObjectID(aid) }, function (err, result) {
       
      res.status(200).json(result);
      // updatearr = result;
    });

  });

});


module.exports = router;