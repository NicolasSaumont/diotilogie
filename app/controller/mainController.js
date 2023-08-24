require('dotenv').config();

const mainController = {

    async homePage(req, res) {

        try {
            const questions = await Question.findAll();
            return res.status(201).render('index.ejs');
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };

    }
};

module.exports = mainController;