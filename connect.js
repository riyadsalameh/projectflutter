var mysql = require('mysql');
var express = require('express');
const http = require("http");
const path = require('path');
var app = express();
const httpServer = http.createServer(app);
app.use("/uploads", express.static(path.join(__dirname, 'uploads')));
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "*");
    next();
  });
var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "style"
});

con.connect(function(err) {
  if (err) throw err;
  console.log("Connected!");
});


app.get('/getAdmin', function(req, res) {
    con.query("SELECT * FROM admin", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
        res.send(result);
      
      });
    });
    app.get('/getAllcate', function(req, res) {
        con.query("SELECT * FROM category", function (err, result, fields) {
            if (err) throw err;
            console.log(result);
            res.send(result);
          
          });
        });

        app.get('/getProductsID/:idCaty', function(req, res) {
            var id=req.params.idCaty;
            console.log(id);
            con.query("SELECT * FROM product where category_id="+id, function (err, result, fields) {
                if (err) throw err;
                console.log(result);
                res.send(result);
              
              });
            });
httpServer.listen(3000,'127.0.0.1',function(){
    httpServer.close(function(){
      httpServer.listen(3000,'127.0.0.1')
    })})

console.log("server running on port 3000");