module.exports=(req,res,next)=>{
	let token = req.cookies.token ? true : false;
if (token) {
     console.log("hello",token);
    next();
  }else{
     res.render('errorpage',{opt:'',msg:"Oops! That page can’t be found."});
  }

}
// function verifyToken(req, res, next) {
//   const bearerHeader = req.cookies.token;
   
//    // console.log("cookie-token",bearerHeader);
//   if (token) {
//      console.log("hello",token);
//     next();
//   }else{
//     // Forbidden
//     console.log("hello","Not found page");
//     res.sendStatus(403);
//   }
// }