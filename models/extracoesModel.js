const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const extracaoSchema = new mongoose.Schema({
    periodo: Number,
    data: Date,
    resultados: { type: Schema.Types.ObjectId, ref: 'resultadoSchema'}
})

const extracao = mongoose.model('extracaoSchema', extracaoSchema)
module.exports = extracao