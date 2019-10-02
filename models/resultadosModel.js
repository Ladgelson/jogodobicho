const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const resultadoSchema = new mongoose.Schema({
    extracao : { type: Schema.Types.ObjectId, ref: 'extracaoSchema' },
    n1: Number,
    n2: Number,
    n3: Number,
    n4: Number,
    n5: Number,
    n6: Number,
    n7: Number,
    n8: Number,
    n9: Number,
    n10: Number,
})

const resultado = mongoose.model('resultadoSchema', resultadoSchema)
module.exports = resultado 