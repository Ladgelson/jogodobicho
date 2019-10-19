require('dotenv').config();

const express = require('express');
const app = express();
const mongoose = require('mongoose');
const PORT = process.env.PORT || 3000;

mongoose.connect(process.env.DATABASE_URL, { useUnifiedTopology: true, useNewUrlParser: true });
const db = mongoose.connection;
db.on('error', (err) => console.error(err));
db.once('open',()=>console.log('Connected to Database'));

app.use(express.json());

const indexRouter = require('./routes/indexRoute');
app.use('/',indexRouter);

const userRoute = require('./routes/userRoute');
app.use('/users', userRoute);

const extracaoRoute = require('./routes/extracaoRoute')
app.use('/extracoes', extracaoRoute)

const apostaRoute = require('./routes/apostaRoute')
app.use('/users',apostaRoute)

app.listen(PORT, () => {
    console.log('Servidor rodando...', PORT);
});