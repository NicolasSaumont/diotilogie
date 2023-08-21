require('dotenv').config();

const mainController = {

    homePage(req, res) {
        res.render('index.ejs');
    }
};

module.exports = mainController;