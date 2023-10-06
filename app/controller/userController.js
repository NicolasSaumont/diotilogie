const { User } = require('../models');

const userController = {
  async profilUserPage(req, res) {
    try {
      if (res.locals.userMail) {
        const user = await User.findOne({
          include: [{ association: 'commentsFromUser' }],
          where: {
            email: res.locals.userMail,
          },
        });
        res.render('profilUser.ejs', { user });
      } else {
        res.redirect('/');
      }
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },
};

module.exports = userController;
