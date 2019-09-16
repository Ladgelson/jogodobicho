const mongoose = require('mongoose');

const userSchema = new mongoose.Schema({
    jogo: {type: Schema.Types.ObjectId, ref: 'jogoSchema'},
    nome: String,
    login: String,
    senha: String,
    saldo: Number,
    adm: Boolean,
    cambista: {type: Schema.Types.ObjectId, ref: 'cambistaSchema'},
    apostas: [{type: Schema.Types.ObjectId, ref: 'apostasSchema'}],
})

const user = mongoose.model('userSchema', userSchema)
module.exports(user)