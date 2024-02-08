require('dotenv').config()
const {StatusCodes} = require("http-status-codes")
const {
    questionString
} = require('./constants')

const questionAnswerSchema = require('../db/question_answer_schema')


const chatGptApiController = async(req, res) => {
    try {
        const {ChatGPTAPI} = await import('chatgpt')
        const api = new ChatGPTAPI({
            apiKey: process.env.OPENAI_API_KEY,
        })

        console.log(req.body)
        const questionText = req.body.question
        const result = await api.sendMessage(questionString + questionText)
        
        await questionAnswerSchema.create({question: questionText, answer: result.text, date: Date.now()})
        
        res.status(StatusCodes.OK).json({success: true, data: result.text})
    }
    
    catch(err) {    
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({success: false, data: "Could not initialize the chatgpt service. Please try again later"})
    }
}

module.exports = {chatGptApiController}