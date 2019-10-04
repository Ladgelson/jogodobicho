const mongoose = require('mongoose');
const itemSchema = new mongoose.Schema({
    posicao: Number,
    valor: Number,
    bicho: Number
})

const item = mongoose.model('itemSchema', itemSchema);
module.exports = item 