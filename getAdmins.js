

var mysql = require('mysql');
var express = require('express');
const conn = require('./connect.js');
const http = require("http");

var app = express();
const httpServer = http.createServer(app);

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Allow-Methods", "*");
    next();
  });
const con = conn.connecttoDB();
app.get('/getUser', function(req, res) {
    con.query("SELECT * FROM admin", function (err, result, fields) {
        if (err) throw err;
        console.log(result);
        res.send(result);
      
      });
    });