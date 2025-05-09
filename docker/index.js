import express from 'express';


const port =process.env.PORT || 8000
const app = express();

app.get("/",(req,res)=>{
    return res.json({
        status:"Success",
        message:"Server is running on port 3000",

    })
})


app.get("/contact",(req,res)=>{
    return res.send("Hello You are on Contact page")
})
app.listen(port,()=>{
    console.log(`Server is running on ${port}`);
    
})