const mongoose = require('mongoose');
const porcentagemSchema = new mongoose.Schema({
    valor: Number,
})

const porcentagem = mongoose.model('porcentagemSchema', porcentagemSchema);
module.exports = porcentagem