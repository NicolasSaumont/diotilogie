const { Comment } = require('../models');
const { Question } = require('../models');

const CommentController = {
  async postComment(req, res) {
    console.log(req.body);
    try {
      const questionId = req.params.id;
      const question = await Question.findByPk(questionId, {
        include: [
          { association: 'commentsFromQuestion', include: 'userOfComment' },
          { association: 'tagsFromQuestion' },
        ],
      });
      const texteAvecSautsDeLigne = question.description.replace(/\n/g, '<br>');
      if (!req.session.username) {
        const errorMessage =
          '*Vous devez être connecté pour pouvoir poster un commentaire';
        return res.render('question.ejs', {
          errorMessage,
          question,
          texteAvecSautsDeLigne,
        });
      }

      console.log(req.body);

      const comment = req.body.commentDescription;

      console.log(comment);

      const newComment = await Comment.create({
        description: comment,
        user_id: res.locals.userID,
        question_id: req.params.id,
      });

      //   res.redirect('/question/:id', { question });
      return res.render('question.ejs', { question, texteAvecSautsDeLigne });
    } catch (error) {
      console.trace(error);
      res.status(500).send({ message: error.message });
    }
  },
};

module.exports = CommentController;
