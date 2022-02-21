var express = require('express');
var router = express.Router();
var jwt = require('jsonwebtoken');
var checkLogin = require('../../middleware/check');
  
var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
var { ObjectID } = require('mongodb');

router.get('/hello', function(req, res, next) {
 
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      var myobj = { name: "Company Inc", address: "Highway 37" };
      dbo.collection("customers").insertOne(myobj, function(err, res) {
        if (err) throw err;
        console.log("1 document inserted");
        db.close();
      });
    });
     res.send('success');
});


/* POST home page. */
router.post('/post-form', async function(req, res, next) {
  res.res('Hello');
});


router.get('/setting', checkLogin, async function(req, res, next) {
   // res.send("Fds");
    await MongoClient.connect(url, function(err, db) {
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
          if (err) {return};
          if(!result){
           res.send("Page Not Found");
           console.log(err);
          }else{ 
           // res.render('header')
           res.render('admin/home/setting', {title:'Setting', opt:result,headermenu:headermenu_dynamic,settingmenu:setting_dynamic,'msg':''});
         }
        });
    });
});


router.get('/show-data', checkLogin, function(req, res, next) {

    var fullUrl = req.protocol + '://' + req.get('host');

    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('customers').find().toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);
         return  res.status(200).send(result);
           // res.render('showdata', { fullUrl : fullUrl ,people: result})
        });
    });
  // res.render('showdata', { people : people });
});



router.get('/updatedata/:id', function(req, res, next) {
  
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      // var myquery = { name: "ram" };
     const id = req.params.id;
       // let query = {_id:req.params.id}
        var newvalues = {  $set: { email: "kaliyasss@shayam.com"}};
        dbo.collection("customers").updateOne({"_id":ObjectID(id)}, newvalues, function(err, res) {
          if (err) throw err;
          console.log("1 document updated",res);
         
        });
    });
 return res.redirect('/');
 });


router.get('/conative', checkLogin, async function(req, res, next) {
  
    var fullUrl = req.protocol + '://' + req.get('host');

    await MongoClient.connect(url, function(err, db) {
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



        var footer = [];
        dbo.collection('option').findOne(function (err, result) {
            footer = result;
            // return result;
         });
         dbo.collection('customers').find().toArray(function (err, result1) {
          // console.log(result1);
          if (err) {return};
          console.log(err);
           res.render('admin/home/newindex', {people: result1, headermenu:headermenu_dynamic,settingmenu:setting_dynamic, opt:footer})
            // res.render('newindex', {people: result1})
      });
    });  
  // res.render('newindex');
});






module.exports = router;
