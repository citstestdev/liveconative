var MongoClient = require('mongodb').MongoClient;
var url = "mongodb://localhost:27017/";
var { ObjectID } = require('mongodb');

module.exports = {
  foo: function () {
   var headermenu_dainamic = [];  
     MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
      
 
     
       dbo.collection('menus').find({ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]}).sort({'index':1}).toArray(function (err, result) {
          // console.log(result);
          if (err) {return};
          console.log(err);

            headermenu_dainamic = result;

        });
       
        
    });
return headermenu_dainamic;
  }
};