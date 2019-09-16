const mongoose = require('mongoose');

const cambistaSchema = new mongoose.Schema({
    user : { type: Schema.Types.ObjectId, ref: 'userSchema' },
    ehcambista: Boolean,
    porcentagem: Number,
})

const cambista = mongoose.model('cambistaSchema',cambistaSchema);
module.exports = cambista;