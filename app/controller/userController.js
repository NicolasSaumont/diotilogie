const { User } = require('../models');

const userController = {
    
    async profilUserPage(req, res) {
        try {

            if (res.locals.userMail) {

                res.render('profilUser.ejs');

            } else {

                res.redirect('/');

            };

        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        }
    }

};

module.exports = userController;