const express = require('express');
const app = express();

app.get('/', (req, res) => res.send('Hola Mundo desde mi app!'));

const port = process.env.PORT || 3000;
app.listen(port, () => console.log(`Server escuchando en puerto ${port}`));

module.exports = app; // para tests con supertest
