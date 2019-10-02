const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const userSchema = new mongoose.Schema({
    nome: String,
    login: String,
    senha: String,
    ehcambista: Boolean,
    adm: Boolean,
    saldoCambista: {type: Schema.Types.ObjectId, ref: 'cambistaSchema'},
    saldoUser: Number,
    apostas: [{type: Schema.Types.ObjectId, ref: 'apostasSchema'}],
})

const user = mongoose.model('userSchema', userSchema)
module.exports = user;