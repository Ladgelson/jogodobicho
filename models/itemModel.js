const mongoose = require('mongoose');
const itemSchema = new mongoose.Schema({
    aposta: {type: mongoose.Schema.Types.ObjectId, ref: 'apostasSchema'},
    posicao: Number,
    valor: Number,
    bicho: Number
})

const item = mongoose.model('itemSchema', itemSchema);
module.exports = item 