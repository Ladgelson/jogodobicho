const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const userSchema = new mongoose.Schema({
    nome: String,
    login: String,
    senha: String,
    adm: Boolean,
    saldo: Number,
    tipo: Number,
    porcentagem: {type: Schema.Types.ObjectId, ref: 'porcentagemSchema'},
    apostas: [{type: Schema.Types.ObjectId, ref: 'apostasSchema'}],
})

const user = mongoose.model('userSchema', userSchema)
module.exports = user;