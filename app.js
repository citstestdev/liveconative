var createError = require('http-errors');
var express = require('express');
var path = require('path');
  const fs = require("fs"); 
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var expressLayout = require('express-ejs-layouts');
var multer  =   require('multer');
const mongoose = require('mongoose');
const bodyParser = require('body-parser');
const flash = require('connect-flash');
const cors = require('cors');
var jwt = require('jsonwebtoken');
var axios = require('axios');
var checkAuth=require('./middleware/auth');
var checkLogin=require('./middleware/check');
const session = require('express-session');
const helmet = require("helmet");
const { check, validationResult } = require('express-validator');
// const { Loginmodel, validate } = require("./models/Loginmodel");
const register = require('./models/Registermodel');
const bcrypt = require("bcrypt");
let alert = require('alert'); 


// var jsdom = require("jsdom");
// const { JSDOM } = jsdom;
// const { window } = new JSDOM();
// const { document } = (new JSDOM('')).window;
// global.document = document;
// var $ = require("jquery")(window);

// var appli = express();
// appli.use(express.static(__dirname +path.sep+ 'public'));

var indexRouter = require('./routes/common/index');
// var usersRouter = require('./routes/users');
var headerRouter =  require('./routes/common/header');
var footerRouter =  require('./routes/common/footer');
// var ourservicesRoutes = require('./routes/ourservicesRoutes');
// var bestworkRoutes = require('./routes/bestworkRoutes');
var expertiseRoutes = require('./routes/expertiseRoutes');
var ourProjectsRouters = require('./routes/ourProjectsRouters');
var ourProcessRouters = require('./routes/ourProcessRouters');
var clientProject = require('./routes/clientProject');
var startProject = require('./routes/startProject');
var loginRoutes = require('./routes/loginRoutes');
// var processRoutes = require('./routes/processRoutes');
// var reviewRoutes = require('./routes/reviewRoutes');
var homeRoutes = require('./routes/homeRoutes');
var contactRoutes = require('./routes/common/contactRoutes');
var menuRoutes  = require('./routes/common/menuRoutes');
var socialRoutes  = require('./routes/common/socialRoutes');
// var seoconfigRoutes  = require('./routes/seoconfigRoutes');
var AboutFirstRoutes = require('./routes/aboutus/AboutFirstRoutes');
var digitallegacyRoutes = require('./routes/digitallegacyRoutes');
var allmenuRoutes = require('./routes/common/allmenuRoutes');

var PortfolioRoutes = require('./routes/portfolio/PortfolioRoutes');


const urlencodedParser = bodyParser.urlencoded({ extended: false })
var app = express();
app.use(helmet());
app.use(bodyParser.json());


try {
        // const connectionParams = {
        //     useNewUrlParser: true,
        //     useUnifiedTopology: true,
        //     useCreateIndex: true,
        // };
    mongoose.connect(process.env.MONGODB_URI || `mongodb://localhost:27017/conative`);
    var  MongoClient  = require('mongodb').MongoClient;
    var { ObjectID } = require('mongodb');
    var url = "mongodb://localhost:27017/";
        console.log("connected to database.");
    } catch (error) {
        console.log("could not connect to database", error);
    }


// view engine setup
app.set('template', path.join(__dirname, 'template'));
app.set('view engine', 'ejs');


app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static('./public'))
// app.use('/js',express.static(__dirname+'public/js'))

app.use(expressLayout);


app.use(session({
    secret: 'secret token',
    resave: false,
    saveUninitialized: true,
    unset: 'destroy',
    name: 'session cookie name',
    genid: (req) => {
        // Returns a random string to be used as a session ID
    }
}));
// app.use(session({
//     secret: 'codeforgeek',
//     saveUninitialized: true,
//     resave: true
// }));

app.use(flash());

// middleware to make 'user' available to all templates
app.use(function(req, res, next) {
  res.locals.error = req.session.error;
  next();
});



app.use('/', indexRouter);
// app.use('/users', usersRouter);
// app.use('/hello', indexRouter);
// app.use('/show-data', indexRouter);
// app.use('/conative', indexRouter);
// app.use('/emailll', indexRouter);
app.use('/', headerRouter);
// app.use('/footer', footerRouter);
// app.use('/', ourservicesRoutes);
// app.use('/', bestworkRoutes);
app.use('/', expertiseRoutes);
app.use('/',ourProjectsRouters);
app.use('/',ourProcessRouters);
app.use('/',clientProject);
app.use('/',startProject);
app.use('/',loginRoutes);
// app.use('/',processRoutes);
// app.use('/',reviewRoutes);
app.use('/',homeRoutes);
app.use('/',contactRoutes);
app.use('/',menuRoutes);
app.use('/',socialRoutes);
// app.use('/social',socialRoutes);
// app.use('/social/socialremove/:id',socialRoutes);
// app.use('/social/showsocial/',socialRoutes);
// app.use('/',seoconfigRoutes);
app.use('/',AboutFirstRoutes);
app.use('/',digitallegacyRoutes);
app.use('/',allmenuRoutes);
app.use('/',PortfolioRoutes);

app.use(cors());

app.use('/uploads', express.static(__dirname +'/uploads'));
 var storage = multer.diskStorage({
    destination: function (req, file, cb) {
      cb(null, 'uploads')
    },
    filename: function (req, file, cb) {
      cb(null, new Date().toISOString()+file.originalname)
    }
  })
   
  var upload = multer({ storage: storage })


app.get('/aboutus', async function(req, res, next) {

  res.send('About Us',{msg:'good'});
});


app.get('/testshow', async function(req, res, next) {
  res.render('newindex11');
});



app.get('/editor', async function(req, res, next) {
  res.render('editor');
});
// console.log("__dirname__dirname__dirname",__dirname);

// app.get('/editor',function(req,res){
//   res.sendFile(path.join(__dirname+'/views/editor.html'));
//   //__dirname : It will resolve to your project folder.
// });

app.post('/setting', upload.single('userPhoto'), async function(req, res, next) {
   

    // var id = req.params.gonderi_id;
    var person = req.body;
    const newObjectId = new ObjectID(person._id);

    await MongoClient.connect(url, function (err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
        dbo.collection("option").deleteMany();
    });


    // var good = newObjectId.str;
    const file = req.file;
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
 
     var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage;
     }
   
      if(file && !file.length) {
        // Do something
          imagepath = file.path;
      }
      
      var myobj = { 
        _id: ObjectID, 
        name: req.body.clientname.trim(), 
        email: req.body.clientemail.trim(),
        description: req.body.description.trim(),
        address: req.body.address.trim(), 
        phone: req.body.phone.trim(),
        alternatephone: req.body.alternatephone.trim(),
        alternateemail: req.body.alternateemail.trim(), 
        image: imagepath,
        footer: req.body.footer.trim(),
        header_analytics:req.body.header_analytics.trim(),
        footer_analytics:req.body.footer_analytics.trim(),
        query:req.body.query.trim(),
        button:req.body.button.trim(),
      };

      dbo.collection("option").insertOne(myobj, function(err, res) {
        if (err) throw err;
        console.log("1 document inserted");
        // db.close();
      });
    });

    // await MongoClient.connect(url, function(err, db) {
    //   if (err) throw err;
    //   var dbo = db.db("conative");
    //    dbo.collection('option').findOne(function (err, result) {
    //       console.log(result);
    //       if (err) {return};
    //        // console.log("dffds",result._id);
    //            dbo.collection("option").remove({_id:ObjectID(result._id)});
    //     });
    // });

 
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
          console.log(result);
          if (err) {return};
          console.log(err);
           // res.render('header')
           res.render('admin/home/setting', {title:'Setting', opt:result, headermenu:headermenu_dynamic, settingmenu:setting_dynamic,'msg':'Setting is updated successfully'});
        });
    });
    // return res.redirect('/setting');
});


app.post('/addbestwork', upload.single('userPhoto'), async function(req, res, next) {
   
  const bestwork = require('./models/Bestworkmodel');

      const file = req.file;
        var imagepath = '';
     if(req.body.oldimage != ''){
      imagepath = req.body.oldimage;
     }
      if(file && !file.length) {
          imagepath = file.path;
      }

      var myobj = new bestwork({ 
        name: req.body.clientname, 
        description: req.body.description,
        image : imagepath
      });
      myobj.save();

    return res.redirect('/bestwork');
});


app.use(function(req, res, next) {
  res.header("Access-Control-Allow-Origin", "*");
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept,Authorization"
  );
  res.header('Access-Control-Allow-Methods', 'GET,PUT,PATCH,POST,DELETE,OPTIONS');
  next();
});


app.get('/achivementdata', function(req, res, next) {
   // var MongoClient = require('mongodb').MongoClient;
   //  var url = "mongodb://localhost:27017/";
    var fullUrl = req.protocol + '://' + req.get('host');
    
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("mydb");
       var achievement = [];
       dbo.collection('achievements').findOne(function (err, result1) {
           achievement = result1;
            // return result;
        });

       dbo.collection('achievementsitem').find().sort({'_id': -1}).limit(4).toArray(function (err, result) {
          console.log(result);
          if (err) throw err;
          console.log(err);
        //   res.status(200).send({
        //     message:"OK",
        //     results:result
        // });
         achievement['itemarr'] = result;
         res.status(200).send(achievement);
           // res.render('showdata', { fullUrl : fullUrl ,people: result})
        });
    });
  // res.render('showdata', { people : people });
});


///      ==================== login     ========================

app.post('/checklogin', async function(req, res, next) {
  

        // const Loginmodel = require('./models/Loginmodel');
         const { Loginmodel, validate } = require("./models/Loginmodel");


        // var MongoClient = require('mongodb').MongoClient;
        // var url = "mongodb://localhost:27017/";
        
          await MongoClient.connect(url, function(err, db) {
            if (err) throw err;
            var dbo = db.db("conative");
             
             console.log("login",req.body.email);

            
             var username=req.body.email;
             dbo.collection('users').findOne({"email":req.body.email,"password":req.body.password},function (err, result) {
    
              if(result){
                  console.log("anser","yes");
            
                 var user = {
                  _id:result._id,
                  email:result.email
                 }

                  var token = jwt.sign(user, 'seceret');
                        console.log(token);
                  axios.defaults.headers.common['Authorization']=`Bearer ${token}`;
                }
           
              if(jwt.verify(token, 'seceret')){
               var decode= jwt.verify(token, 'seceret');
                     res.cookie(`token`,token, { maxAge: 3000, httpOnly: true });

               sessions.tokenseesion = token;
               console.log(req.sessions);
                 res.redirect('/portfolio');
              }else{
                res.status(401).json({
                    error:"Invalid Token"
                });
              }
      
              });
    });

});


///      ==================== login     ========================


app.get("/register", async function(req, res, next){
  // check if user is logged in, by checking cookie
  // let username = req.cookies.username;
  let token = req.cookies.token ? true : false;
   
   console.log("checklogin",token);

   if(token){
      return res.redirect("/home");
   }

  return res.render("register");
});

app.get("/admin", (req, res) => {
  // check if there is a msg query
  let bad_auth = req.query.msg ? true : false;
  let token = req.cookies.token ? true : false;
   
   console.log("checklogin",token);

   if(token){
      return res.redirect("/home");
   }
  // if there exists, send the error.
  if (bad_auth) {
    return res.render("login_1", {
      error: "Invalid username or password",
    });
  } else {
    // else just render the login
    return res.render("login_1",{opt:[]});
  }
});

app.get("/home", checkLogin, (req, res) => {
  // get the username
  let username = req.cookies.username;
  let token = req.cookies.token ? true : false;
   
   console.log("checkwelcome",token);

   if(!token){
      return res.redirect("/admin");
   }
  // render welcome page
   return res.redirect("/home");
});


app.post("/process_login", async (req, res) => {
  // get the data
  let { username, password } = req.body;
  
        await MongoClient.connect(url, function(err, db) {
            if (err) throw err;
            var dbo = db.db("conative");
             
            console.log("login",username);
            
             // var username=username;
        dbo.collection('users').findOne({"email":username}, async function (err, result) {     
       // basic check

       if(!result){
                return res.redirect("/admin?msg=fail");
       }else{
         
            const validPassword = await bcrypt.compare(req.body.password, result.password);
            if(validPassword && username === result.email){
               var user = {
                    _id:result._id,
                    email:result.email
                   }
              session.massage = "Login successfully";
              var token = jwt.sign(user, 'seceret');
              res.cookie("token", token);
              res.cookie("username", username);
              // redirect
              return res.redirect("/home");
            }else{
               return res.redirect("/admin?msg=fail");
            }
        }

    });

 });

});


app.post('/adduser', urlencodedParser, [
    check('username','Please enter username')
        .exists()
        .trim()
        .isLength({ min: 3 }),
    check('email','Please enter email')
        .exists()
        .trim()
        .isEmail().withMessage('Please enter valid email')
        .normalizeEmail()
        .custom((value, {req}) => {
            return new Promise((resolve, reject) => {
              register.findOne({email:req.body.email}, function(err, user){
                if(err) {
                  console.log("ser");
                  reject(new Error('Server Error'))
                }
                if(Boolean(user)) {
                  // console.log("mmm");
                  // $('#username').val("ddd");
                  reject(new Error('E-mail already in use'))
                }
                resolve(true)
              });
            });
          }),
    check('password','Please enter password')
        .exists()
        .trim()
        .isLength({min:5}),
    check('confirmPassword')
    .trim()
    .isLength({min:5})
    .withMessage('Password must be minlength 5 characters')
    .custom(async (confirmPassword, {req}) => {
      const password = req.body.password
      if(password !== confirmPassword){
        throw new Error('Passwords must be same')
      }
    }),
], async (req, res)=> {
    // console.log("yesygdfgfdg");
    const errors = validationResult(req)
    if(!errors.isEmpty()) {
      // console.log("yesy");
        // return res.status(422).jsonp(errors.array())
        const alert = errors.array();
        res.render('register', {
            alert,
        })

    }else{
     
      const salt = await bcrypt.genSalt(10);
  // console.log("nooo");
     const hashpassword = await bcrypt.hash(req.body.password, salt);

      var myobj = new register({ 
        username: req.body.username, 
        email: req.body.email,
        password : hashpassword
      });
      myobj.save();
      return res.redirect('/admin');
    }
    // setTimeout(function(){ return res.redirect("/welcome"); }, 5000);
})


app.get("/logout", (req, res) => {
  // clear the cookie
  res.clearCookie("token");
  res.clearCookie("username");
   req.flash('success', `You've been successfully redirected to the Message route!`)
    // res.redirect('/message')
  // redirect to login
  return res.redirect("/admin");
});


app.get('/option-show', function(req, res, next) {
   // var MongoClient = require('mongodb').MongoClient;
   //  var url = "mongodb://localhost:27017/";
    var fullUrl = req.protocol + '://' + req.get('host');
    
    MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");
       var settings = [];
       dbo.collection('option').findOne(function (err, result1) {
           settings = result1;
         // reviewdata['review'] = result;
         res.status(200).send(settings);
       });
    });
  // res.render('showdata', { people : people });
});


app.get('/', async function(req, res, next) {
   // res.send("Fds");
    await MongoClient.connect(url, function(err, db) {
      if (err) throw err;
      var dbo = db.db("conative");

       var headermenu_dainamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "1"}]}]}).sort({'index':1}).toArray(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);

           headermenu_dainamic = result;
        });

       var setting_dainamic = [];  
       dbo.collection('menus').find({$and: [{ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]},{$or: [{"parent_id": "2"}]}]}).sort({'index':1}).toArray(function (err, result) {
          console.log(result);
          if (err) {return};
          console.log(err);

           setting_dainamic = result;
        });
           
        res.render('sidebar_common', {headermenu:result,settingmenu:setting_dainamic});
         
    });
});


// app.use(function getmenudata() {
//    // res.send("Fds");
//      MongoClient.connect(url, function(err, db) {
//       if (err) throw err;
//       var dbo = db.db("conative");

//       var headermenu_dainamic = [];  
//        dbo.collection('menus').find({ $or:[ {'displaymenu':'b'},{'displaymenu':'fb'}]}).sort({'index':1}).toArray(function (err, result) {
//           console.log(result);
//           if (err) {return};
//           console.log(err);
//            // res.status(200).json(result);
//            // res.render('header')
           
//          return result;
//         });
//     });
// });



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var fullUrl = req.protocol + '://' + req.get('host') + req.originalUrl;
  if(fullUrl === "http://localhost:4000/adduser"){
    res.redirect("http://localhost:4000/register");
  }else{
    next(createError(404));
  }
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});


module.exports = app;
