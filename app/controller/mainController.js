const { Question } = require('../models');

const mainController = {

    async homePage(req, res) {

        try {
            const questions = await Question.findAll({
                include: [
                    {association: 'userOfQuestion'},
                    {association: 'tagsFromQuestion'},
                ],
            });
            return res.status(201).render('index.ejs', { questions });
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    }
};

module.exports = mainController;