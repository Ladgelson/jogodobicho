const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const apostaSchema = new mongoose.Schema({
    apostas : { type: Schema.Types.ObjectId, ref: 'apostasSchema' },
    posicao: Number,
    valor: Number,
    tipoDeAposta: Number,
})

const aposta = mongoose.model('apostaSchema', apostaSchema);
module.exports = aposta 