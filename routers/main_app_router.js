const express = require('express')
const router = express.Router()
const {chatGptApiController} = require('../controllers/chat_gpt_api_controller');

router.route('/chatgptresponse').post(chatGptApiController)

module.exports = router