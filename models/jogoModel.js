const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const jogoSchema = new mongoose.Schema({
    users: [{type: mongoose.Schema.Types.ObjectId, ref: 'userSchema'}],
    extracoes: [{type: mongoose.Schema.Types.ObjectId, ref: 'extracoesSchema'}]
})

const jogo = mongoose.model('jogoSchema', jogoSchema);
module.exports = jogo