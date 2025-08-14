const express = require('express');
const bcrypt = require('bcrypt');
const app = express();

const con = require('./db');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// generate password
app.get('/password/:raw',(req,res)=>{
    const raw = req.params.raw;
    bcrypt.hash(raw,10,(err,hash)=>{
        if(err){
            return res.status(500).send('Error creating password!');
        }
        res.send(hash);
    });
});

// ----------------- login ------------------
app.post('/login',(req,res)=>{
    const {username, password} = req.body;
    const sql = "SELECT * FROM users WHERE username = ?";
    con.query(sql,[username],(err,result)=>{
        if(err){
            return res.status(500).send('Database error!');
        }
        if(result.length != 1){
            return res.status(401).send('Invalid username or password!');
        }
        bcrypt.compare(password,result[0].password,(err,same)=>{
            if(err){
                return res.status(500).send('Error comparing passwords!');
            }
            if(same){
                res.status(200).send('Login successful!');
            }else{
                res.status(401).send('Invalid username or password!');
            }
        })
    })
})


// get all expenses
app.get('/expenses', (_req, res) => {
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