const bcrypt = require('bcrypt');
const emailValidator = require('email-validator');
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
                }
            });

            if(!user){
                
                throw new Error('Utilisateur non trouvé');
                
            };
            
            const passwordMatch = await bcrypt.compare(userPassword, user.password);

            if (!passwordMatch) {

                throw new Error('Mot de passe incorrect');

            }
            
            else {

                req.session.userID = user.dataValues.id;
                req.session.userMail = user.dataValues.email;
                req.session.username = user.dataValues.username;
                res.redirect('/');

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

    async signupPage(req, res) {

        try {

            res.render('signup.ejs');

        } catch (error) {
            console.trace(error);
        }

    },
    
    async postSignup(req, res) {
        try {

            const username = req.body.username;
            const email = req.body.email;
            const password = req.body.password

            if (!username || !email || !password) {
                throw new Error("Tous les champs doivent être remplis");
            }; 

            const existingUser = await User.findOne({
                where: {
                    email: req.body.email
                }
            });

            if (existingUser) {
                throw new Error('User already exist');
            };

            if (emailValidator.validate(req.body.email) !== true) {
                throw new Error("Format de l'email invalide");
            };


            if (req.body.password !== req.body.passwordConfirm) {
                throw new Error('Les mots de passe doivent être identiques')
            };

            const hashedPassword = await bcrypt.hash(password, 10);

            const newUser = await User.create({
                email: email,
                password: hashedPassword,
                username: username,
            });

            res.redirect('/login');

        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        }
    }

};

module.exports = mainController;