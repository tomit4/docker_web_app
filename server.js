'use strict'
const express = require('express')
require('dotenv').config()

// Constants
const port = process.env.PORT || 8080

// App
const app = express()
app.get('/', (req, res) => {
    res.send('Hello World')
})

app.listen(port, () => {
    console.log(`Running on port: ${port}`)
})
