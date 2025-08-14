const express = require('express');
const app = express();

const con = require('./db');

app.get('/', (_req, res) => {
    const sql = "SELECT * FROM expenses";
    con.query(sql,(err,result)=>{
        if(err){
            return res.status(500).send('Database error!');
        }
        res.json(result);
    })
})

app.listen(3000,()=>{
    console.log('Server 🤑 is running on port 3000 ✅');
})