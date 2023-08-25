const express = require('express');
const router = express.Router();
const mainController = require('./controller/mainController');
const tagController = require('./controller/tagController');
const questionController = require('./controller/questionController');

// Main url
router.get('/', mainController.homePage);

// Tags url 
router.get('/tags', tagController.getTags);
router.get('/tags/:id', tagController.getQuestionsByTagId);

// Questions url
router.get('/question/:id', questionController.getQuestionById);

// Users url


module.exports = router;