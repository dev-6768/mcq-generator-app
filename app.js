require('dotenv').config()
const express = require('express')
const {StatusCodes} = require('http-status-codes')
const mainAppRouter = require('./routers/main_app_router')
const cors = require('cors')
const app = express()

const {connectDb} = require('./connection/connection')

app.use(cors())
app.use(express.json())


app.get("/", (req, res) => {
    res.status(StatusCodes.OK).json({success: true, data: "hello and welcome to chatgpt service."})
})

app.get("/about", (req, res) => {
    res.status(StatusCodes.OK).json({success: true, data: "hello my name is Sanidhya Mishra and i am the creator of this api. Copyright c. 2023 Sanidhya Mishra all rights reserved"})
})

app.use("/api/v1/chatgpt", mainAppRouter)

const start = async(req, res) => {
    try {
        connectDb(process.env.MONGO_URI)
        app.listen(process.env.PORT, console.log("app listening on port " + String(process.env.PORT)))
    }

    catch(err) {
        res.status(StatusCodes.INTERNAL_SERVER_ERROR).json({success: false, data: "Error encountered while initializing the backend."})
    }
}

start()