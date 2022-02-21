var express = require('express');
var router = express.Router();
var multer  =   require('multer');
var nodemailer = require('nodemailer');
var checkLogin=require('../../middleware/check');
var MongoClient = require('mongodb').MongoClient;
var { ObjectID } = require('mongodb');
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

router.get('/contact', checkLogin, async function(req, res, next) {
    
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
      var contactform = [];
       dbo.collection('contacts').findOne(function (err, result1) {
           contactform = result1;
        });
      var showdata = [];
       dbo.collection('contacts').findOne({ "_id": ObjectID('619e31a3d387bd16d03e874c') },function (err, result1) {
        showdata = result1;
       });

      var allcontactform = [];
       dbo.collection('contacts').find().sort({'_id':-1}).toArray(function (err, result) {
           allcontactform = result;
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
            res.render('admin/home/contact', { title:"Contact", headermenu:headermenu_dynamic,settingmenu:setting_dynamic,  allcontactform:allcontactform, opt:result,pagedata:showdata, 'msg':''});
        });
    });

});


router.post('/contact', async function(req, res, next) {

  await MongoClient.connect(url, function (err, db) {
    if (err) throw err;
    var dbo = db.db("conative");
    
     // var form = 
     var hell = [];
     arr = req.body.description.split (",");
    
     for(var i=0; arr.length-1>=i; i++){
       
        var d =  arr[i].split (":");
             var k = d[0];
             var v = d[1];    
       
        var input = {
          type:k,
          name:v
        }
        hell.push(input);
     }

    var myobj = {
      formname: req.body.clientname.trim(),
      title: req.body.title.trim(),
      form : hell
    };


    dbo.collection("contacts").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document contact inserted");
    });
  });

  return res.redirect('/contact');
});


router.get('/contact-show', function(req, res, next) {

    var fullUrl = req.protocol + '://' + req.get('host');
    
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       var showdata = [];
       dbo.collection('contacts').findOne({ "_id": ObjectID('619e31a3d387bd16d03e874c') },function (err, result1) {
  
         res.status(200).send(result1);

        });
    });

});


router.post('/createContact',  async function(req, res, next) {
     
    var fullUrl = req.protocol + '://' + req.get('host');

    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      var myobj = JSON.parse(req.body.body);

    dbo.collection("contactsPerson").insertOne(myobj, function (err, res) {
      if (err) throw err;
      console.log("document contactsPerson inserted");

    });
    

// var transporter = nodemailer.createTransport({
//   host: 'smtp.gmail.com',
//   port: 587,
//   secure: false,
//   requireTLS: true,
//   auth: {
//     user: 'citstestdev@gmail.com',
//     pass: 'conative@16'
//   }
// });

// var mailOptions = {
//   from: 'citstestdev@gmail.com',
//   to: 'citstestdev@gmail.com',
//   subject: 'Sending Email using Node.js',
//   text: 'That was easy!'
// };

// transporter.sendMail(mailOptions, function(error, info){
//   if (error) {
//     console.log(error);
//   } else {
//     console.log('Email sent: ' + info.response);
//   }
// });


});
   // return res.redirect('http://localhost:3000');
});


module.exports = router;