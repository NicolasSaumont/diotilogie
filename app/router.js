const express = require('express');
const router = express.Router();
const mainController = require('./controller/mainController');
const tagController = require('./controller/tagController');
const questionController = require('./controller/questionController');
const userController = require('./controller/userController');

// Main url
router.get('/', mainController.homePage);
router.get('/login', mainController.loginPage);
router.get('/logout', mainController.logout);
router.get('/signup', mainController.signupPage);

router.post('/login', mainController.postLogin);
router.post('/signup', mainController.postSignup);

// Tags url 
router.get('/tags', tagController.getTags);
router.get('/tags/:id', tagController.getQuestionsByTagId);

// Questions url
router.get('/question/:id', questionController.getQuestionById);

// Users url
router.get("/profil/:user", userController.profilUserPage);

module.exports = router;