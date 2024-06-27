const mysql =require('mysql');


// creating connection
const connection =mysql.createConnection({
    host:'localhost',
    port:'3306',
    database:'tour_travel',
    user:'root',
    password:''
});

// check Error
connection.connect(function(error){
if(error){
    console.log("Error conncting to mysql");
    return;
}
console.log("Connection to Mysql Successfully");
});

module.exports=connection;