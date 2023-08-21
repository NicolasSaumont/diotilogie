require('dotenv').config();

const path = require('path');
const express = require('express');
const router = require('./app/router');
const session = require("express-session");

const port = process.env.PORT || 3000;

const app = express();

app.use(session({
  secret:'princess consuela banana hammock',
  resave:true,
  saveUninitialized:true,
  cookie:{
    secure: false,
    maxAge: (1000*60*60) // ça fait une heure
  }
}))

app.set('view engine', 'ejs');
app.set('views', './app/views');

app.use(express.static(path.join(__dirname, './public')))

app.use(express.urlencoded({ extended: true }));

app.use((req,res,next)=>{
  res.locals.user = req.session.user;
  res.locals.firstname = req.session.firstname;
  res.locals.lastname = req.session.lastname;
  next();
});

app.use(router);

app.listen(port, _ => {
   console.log(`http://localhost:${port}`);
});