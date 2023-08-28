const { Question } = require('../models');

const questionController = {

    async getQuestionById (req, res) {

        try {

            const questionId = parseInt(req.params.id, 10);

            const question = await Question.findByPk(questionId, {
                include: [
                    {association: 'commentsFromQuestion', include: 'userOfComment'},
                    {association: 'tagsFromQuestion'},
                ],
            });

            if (!question) {
                return res.status(404).json({ message: "Question not found. Please verify the provided id" });
            }

            const texteAvecSautsDeLigne = question.description.replace(/\n/g, '<br>');

            return res.status(201).render('question.ejs', { question, texteAvecSautsDeLigne });
            
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    }

};

module.exports = questionController;