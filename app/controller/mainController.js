const bcrypt = require('bcrypt');
const emailValidator = require('email-validator');
const { Question } = require('../models');
const { User } = require('../models');

const mainController = {
  async homePage(req, res) {
    try {
      const questions = await Question.findAll({
        include: [{ association: 'tagsFromQuestion' }],
      });

      return res.status(201).render('index.ejs', { questions });
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },

  async loginPage(req, res) {
    try {
      if (!res.locals.user) {
        res.render('login.ejs');
      } else {
        res.redirect('/');
      }
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },

  async postLogin(req, res) {
    try {
      const userEmail = req.body.email;
      const userPassword = req.body.password;

      const user = await User.findOne({
        where: {
          email: userEmail,
        },
      });

      if (!user) {
        throw new Error('Utilisateur non trouvé');
      }

      const passwordMatch = await bcrypt.compare(userPassword, user.password);

      if (!passwordMatch) {
        throw new Error('Mot de passe incorrect');
      } else {
        req.session.userID = user.dataValues.id;
        req.session.userMail = user.dataValues.email;
        req.session.username = user.dataValues.username;
        res.redirect('/');
      }
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },

  async logout(req, res) {
    try {
      req.session.destroy(res.redirect('/'));
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },

  async signupPage(req, res) {
    try {
      const errorMessage = '';

      return res.render('signup.ejs', { errorMessage });
    } catch (error) {
      console.trace(error);
    }
  },

  async postSignup(req, res) {
    try {
      const username = req.body.username;
      const email = req.body.email;
      const password = req.body.password;

      if (!username || !email || !password) {
        const errorMessage = '*Tous les champs doivent être remplis';
        return res.render('signup.ejs', { errorMessage });
      }

      const existingUser = await User.findOne({
        where: {
          email: req.body.email,
        },
      });

      if (existingUser) {
        const errorMessage = "*L'utilisateur existe déjà";
        return res.render('signup.ejs', { errorMessage });
      }

      if (emailValidator.validate(req.body.email) !== true) {
        const errorMessage = "*Format de l'email invalide";
        return res.render('signup.ejs', { errorMessage });
      }

      if (req.body.password !== req.body.passwordConfirm) {
        const errorMessage = '*Les mots de passe doivent être identiques';
        return res.render('signup.ejs', { errorMessage });
      }

      const hashedPassword = await bcrypt.hash(password, 10);

      const newUser = await User.create({
        email: email,
        password: hashedPassword,
        username: username,
      });

      // Connexion
      req.session.userID = newUser.dataValues.id;
      req.session.userMail = newUser.dataValues.email;
      req.session.username = newUser.dataValues.username;
      res.redirect('/');
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },
};

module.exports = mainController;
