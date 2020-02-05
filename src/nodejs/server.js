const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.send('SourceGuard Demo!'))

const fetch = require("node-fetch");

const url = "https://95.133.163.98";

const get_data = async url => {
  try {
    const response = await fetch(url);
    const json = await response.json();
    console.log(json);
  } catch (error) {
    console.log(error);
  }
};

getData(url);
app.listen(port, () => console.log(`Example app listening on port ${port}!`))


