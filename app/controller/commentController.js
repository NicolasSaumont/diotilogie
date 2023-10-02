const { Comment } = require('../models');

const CommentController = {

    async postComment (req, res) {

        try {

            if(!req.session.username){
                
                // const errorMessage = "*Vous devez être connecté pour pouvoir poster un commentaire";
                // return res.render('login.ejs', { errorMessage });

                throw new Error('Vous devez être connecté pour pouvoir posté un commentaire');
                
            };

            const comment = req.body.comment-description;

            const newComment = await Comment.create({
                description: comment,
                user_id: res.locals.userID,
                question_id: req.params.id,
            });

            res.redirect('/question/:id');
        
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    },

};

module.exports = CommentController;