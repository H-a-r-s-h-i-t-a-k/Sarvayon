const express =require("express");
const User =require("../models/user");
const bcryptjs=require('bcryptjs');
const authRouter= express.Router();
const jwt =require('jsonwebtoken');



//make it access outside

authRouter.post("/api/signup",async(req,res)=>{
  
  try{
    const {name,email,password}=req.body;
    
    const existingUsr= await User.findOne({email});
    // .then((user)=>{
     
    //   return res
    //   .status(400)
    //   .json({msg:"User with same email already exists !"});
   

    // });
    if(existingUsr)
    {
  return res
  .status(400)
  .json({msg:"User with same email already exists !"});
}
      

 const hashedPassword = await bcryptjs.hash(password,8);





      let user = new User({
      email,
      password:hashedPassword,
      name,
      
    });
    
    user= await user.save();
    res.status(200).json(user);
    
    
    
    //  console.log(req.body);
    //post ----- body
    //get the data from client and 
    //post the data to database
    // return that  data to user
    
  }catch(e){
    res.status(500).json({error:e.message });
  }

});


////////////Signin Route
//signin
authRouter.post('/api/signin',async(req,res)=>{
try{
  const {email,password}=req.body;

  const user =await User.findOne({email});
  if(!user){
    return res
    .status(400)
    .json({
      msg:"User with this email does not exist!!"
    },);

     
  }

  const isMatch=await bcryptjs.compare(password,user.password);
  if(!isMatch){
    return res
    .status(400)
    .json({
      msg:"Incorrect password ."
    },);
  }
const token =jwt.sign({id:user._id},"passwordkey");

//access any wherer in app locations  
res.json({token,...user._doc});



}catch(e){
  res.status(500).json({error:e.message});
}
});

module.exports=authRouter;




// authRouter.get('/user',(req,res)=>{jjjjjkk
//     res.json({msg:"harshita"});
// });