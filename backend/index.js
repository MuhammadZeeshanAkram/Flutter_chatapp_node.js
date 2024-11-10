const express=require('express');
var http = require('http');
const cors=require('cors');
const app=express();
const port=process.env.PORT || 5000;
var server=http.createServer(app);
var io=require('socket.io')(server,{
    cors:{
        origin:"http://localhost:3000",
}});


//middleware
app.use(express.json());
app.use(cors());

//enabling connection event
io.on('connection',(socket)=>{
    console.log("new user connected");
})


server.listen(port,()=>console.log(`server is running on port ${port}`));