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
    },

    async getQuestionsByTagId (req, res) {

        try {

            const tagId = parseInt(req.params.id, 10);

            // const questionsByTagId = await Tag.findAll({
            //     where: {
            //         'id': tagId
            //     },
            //     include: [
            //         {association: 'questionsFromTags', include: ['userOfQuestion']},
            //     ]
            // }); 

            const tag = await Tag.findByPk(tagId, {
                include: [
                    {association: 'questionsFromTags', include: ['userOfQuestion']},
                ]
            });

            if (!tag) {
                return res.status(404).json({ message: "Tag not found. Please verify the provided id" });
            }

            return res.status(201).render('tag.ejs', { tag });
            
        } catch (error) {
            console.trace(error);
            res.status(500).send({ message: error.message });
        };
    
    }

};

module.exports = tagController;