const express = require('express') 
const mysql = require('mysql') 
const db = mysql.createConnection({   
    host: 'localhost',
    user: 'fintech',
    password: 'P@ssw0rd',
    database: 'simpledbapp'
})

db.connect() 
const app = express() 

app.get('/accounts', (req, res) => {   
    let sql = 'SELECT * FROM accounts'  
    let query = db.query(sql, (err, results) => { 
        if (err) throw err    
        console.log(results)
        res.json(results)
    })
})

app.listen('3000', () => { 
    console.log('start port 3000')
})