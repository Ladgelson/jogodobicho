const mongoose = require('mongoose');

const jogoSchema = new mongoose.Schema({
    login:String,
    senha:String,
    users: [{
        nome: String,
        login: String,
        senha: String,
        saldo: Number,
        cambista: {
            ehcambista: Boolean,
            porcentagem: Number,
        },
        apostas: [{
            tipo: Number,
            datahora: Date,
            aposta: [{
                posicao: Number,
                valor: Number,
                tipoDeAposta: Number,
            }]
        }],
        extracoes: [{
            periodo: Number,
            datahora: Date,
            resultados: [{
                bicho: Number,
                num: Number
            }]
        }]
    }]
})

module.exports = mongoose.model('jogo',jogoSchema)