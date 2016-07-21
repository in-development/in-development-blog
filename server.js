const express = require('express')

const app = express()

app.use(express.static('dist'))

app.listen(process.env.SERVER_PORT || 8000, () => {
  console.log('serving')
})
