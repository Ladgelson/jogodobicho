const mongoose = require('mongoose');
const itemSchema = new mongoose.Schema({
    posicao: Number,
    valor: Number,
    tipoDeAposta: Number,
})

const item = mongoose.model('itemSchema', itemSchema);
module.exports = item 