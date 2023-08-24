const { Tag } = require('../models');

const tagController = {

    async getTags (req, res) {

        try {

            const tags = await Tag.findAll({
                order: [
                    ['name', 'ASC']
                ]
            });

            return res.render('tags.ejs', { tags })

        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };
    }

};

module.exports = tagController;