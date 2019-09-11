require('dotenv').config();

const express = require('express');
const app = express();
const mongoose = require('mongoose');
const PORT = process.env.PORT || 3000;

mongoose.connect(process.env.DATABASE_URL, { useNewUrlParser: true });
const db = mongoose.connection;
db.on('error', (err) => console.error(err));
db.once('open',()=>console.log('Connected to Database'));

app.use(express.json());

const indexRouter = require('./routes/indexRoute');
app.use('/',indexRouter);

app.listen(PORT, () => {
    console.log('Servidor rodando...');
});
