const mongoose = require('mongoose');

const jogoSchema = new mongoose.Schema({
    users: [{type: Schema.Types.ObjectId, ref: 'userSchema'}],
    extracoes: [{type: Schema.Types.ObjectId, ref: 'extracoesSchema'}]
})

const jogo = mongoose.model('jogoSchema', jogoSchema);
module.exports(jogo)