const User = require('./user');
const Question = require('./question');
const Tag = require('./tag');

//! Association user - question
// Un user peut créer plusieurs questions
User.hasMany(Question, {
    as: 'questionsFromUser',
    foreignKey: 'user_id'
});

// Une question est créée par un seul user
Question.belongsTo(User, {
    as: 'userOfQuestion',
    foreignKey: 'user_id'
});

//! Association tag - question
// Une question peut appartenir a plusieurs tags
Question.belongsToMany(Tag, {
    through: 'question_has_tag',
    foreignKey: 'question_id',
    otherKey: 'tag_id',
    as: 'tagsFromQuestion'
})

// Un tag peut être appartenu par plusieurs questions
Tag.belongsToMany(Question, {
    through: 'question_has_tag',
    foreignKey: 'tag_id',
    otherKey: 'question_id',
    as: 'questionsFromTags'
});

module.exports = { User, Question, Tag };