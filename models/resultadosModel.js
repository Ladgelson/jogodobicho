const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const resultadoSchema = new mongoose.Schema({
    extracao : { type: Schema.Types.ObjectId, ref: 'extracaoSchema' },
    bicho: Number,
    num: Number
})

const resultado = mongoose.model('resultadoSchema', resultadoSchema)
module.exports(resultado)