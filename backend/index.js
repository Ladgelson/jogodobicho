const express = require('express');
const cors = require('cors');
const app = express();
const mongoose = require('mongoose');
const PORT = process.env.PORT || 5000;

require('dotenv').config();

mongoose.connect(process.env.DATABASE_URL, { useUnifiedTopology: true, useNewUrlParser: true });
console.log(process.env.DATABASE_URL)
const db = mongoose.connection;
db.on('error', (err) => console.error(err));
db.once('open',()=>console.log('Connected to Database'));

app.use(express.json(cors()));

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
