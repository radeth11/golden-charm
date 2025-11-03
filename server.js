let express = require('express');

let app = express();
const PORT = 7778;

app.use(express.static('public'));

app.get('/', function(req, res) {
  res.sendFile('index.html');
});

app.listen(PORT, () => console.log('running on port ', PORT));