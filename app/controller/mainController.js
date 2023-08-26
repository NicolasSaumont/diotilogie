const { Question } = require('../models');
const { User } = require('../models');

const mainController = {

    async homePage(req, res) {

        try {

            const questions = await Question.findAll({
                include: [
                    {association: 'tagsFromQuestion'},
                ],
            });

            return res.status(201).render('index.ejs', { questions });
            
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    },

    async loginPage (req, res) {

        try {

            if(!res.locals.user){

                res.render('login.ejs');

            } else {

                res.redirect('/');

            }
        
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    },

    async postLogin (req, res) {

        try {

            const userEmail = req.body.email;
            const userPassword = req.body.password;

            const user = await User.findOne({
                where: {
                    'email': userEmail,
                    'password': userPassword
                }
            });

            if(user){

                req.session.user = user.dataValues.email;
                req.session.username = user.dataValues.username;
                res.redirect('/');

            } else {

                res.redirect('/login');

            }
        
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    },

    async logout(req,res){

        try{

            req.session.destroy(res.redirect("/"));

        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    },
    

};

module.exports = mainController;