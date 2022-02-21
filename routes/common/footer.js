var express = require('express');
var router = express.Router();

router.get('/', function(req, res, next) {
   var MongoClient = require('mongodb').MongoClient;
    var url = "mongodb://localhost:27017/";
    var fullUrl = req.protocol + '://' + req.get('host');

    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       dbo.collection('option').findOne(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           res.render('footer', { title : "Guru"  ,opt:result});
        });
    });
  
});

module.exports = router;
