//import from packages
const express=require("express")

//import from other relative folder
const authRouter=require('./routes/auth');
const { default: mongoose } = require("mongoose");

//app init 
const app = express();
const DB ="mongodb+srv://kharshita18092003:D1A9Y7A5@cluster0.ppddjph.mongodb.net/?retryWrites=true&w=majority";


//middleware
//CLIENT ->MIDDLEWARE -> SERVER -> CLIENT
app.use(express.json());
app.use(authRouter);



///init
const PORT = 3000;
// console.log("Hello Harshita")
//creating an API///////////////////////////////////
// http://<ip addressss>/hello-world
// app.get('/',(req,res)=>{
    //     res.json({name:'harshita'});
// });

// ///////
// app.get('/hello-world',(req,res)=>{
    // // res.send("Hello world");
    // res.json({'hi':"HElllo Worlddd"});
    
    });
    
    connections



    mongoose
    .connect(DB)
    .then(()=>{
        console.log("Connection Successful");
    })
    .catch((e)=>{
        console.log(e);
    });
    
    app.listen(PORT,  "0.0.0.0",() => { console.log(`connected at port ${PORT} hello harshita`);

});



//get,put,post,delete,update->crud
//local host 127.0.0.1 communicate itself
//0.0.0.0 assess everywhere   ios /anroid not take local host
