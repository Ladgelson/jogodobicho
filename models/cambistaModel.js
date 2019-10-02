const mongoose = require('mongoose');

const cambistaSchema = new mongoose.Schema({
    porcentagem: Number,
    saldo: Number,
})

const cambista = mongoose.model('cambistaSchema',cambistaSchema);
module.exports = cambista;