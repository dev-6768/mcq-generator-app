const mongoose = require('mongoose')

const questionAnswerSchema = mongoose.Schema({
    question:{
        type: String,
    },
    answer: {
        type: String,
    },
    date: {
        type: Date,
    }

})

module.exports = mongoose.model("questionAnswerSchema", questionAnswerSchema)

