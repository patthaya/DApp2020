# โปรแกรมการเชื่อมต่อฐานข้อมูลอย่างง่าย

## การเตรียมฐานข้อมูล
### Step 0: 
ล็อกอินเข้าสู่ MySQL
```
sudo mysql -u root -p
```

### Step 1: 
ที่ MySQL prompt สร้างฐานข้อมูลชื่อ simpledbapp
```
CREATE DATABASE simpledbapp;
```

### Step 2:
สร้างตารางชื่อ accounts
```
USE simpledbapp;
CREATE TABLE accounts (
    id      INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    uname   VARCHAR(50),
    passw   VARCHAR(50),
    created TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
```

### Step 3:
แทรกข้อมูลตัวอย่าง
```
INSERT INTO accounts(uname, passw) values 
(
    'fintech',
    'password'
),
(
    'utcc',
    'simple_passw'
);
```

### Step 4:
สร้างบัญชีผู้ใช้ชื่อ fintech และพาสเวิร์ดคือ P@ssw0rd
```
CREATE USER 'fintech'@'localhost' IDENTIFIED WITH mysql_native_password BY 'P@ssw0rd';
```

### Step 5:
ให้สิทธิ์ fintech ในการใช้ฐานข้อมูล simpledbapp ทุกตาราง
```
GRANT ALL PRIVILEGES ON simpledbapp.* to 'fintech'@'localhost';
```

## การพัฒนาโปรแกรมด้วย NodeJS อย่างง่าย
### Step 1:
สร้างและย้ายไปยังโฟลเดอร์ 02_SimpleDBApp
```
mkdir 02_SimpleDBApp
cd 02_SimpleDBApp
```

### Step 2:
ให้ค่าเริ่มต้นโปรเจ็คโดยใช้คำสั่ง
```
node init
```

### Step 3:
ใช้ Visual Studio Code สร้างไฟล์ ```app.js``` ในโฟลเดอร์ ```02_SimpleDBApp```:
```
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
```

### Step 4:
รันโปรเจ็คที่ Terminal โดยใช้คำสั่งต่อไปนี้
```
node app.js
```

แล้วทำการเปิด Browser โดย URL คือ ```localhost:3000/accounts```
