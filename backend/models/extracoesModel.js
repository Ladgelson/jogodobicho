const mongoose = require('mongoose');
const extracaoSchema = new mongoose.Schema({
    periodo: Number,
    ano: Number,
    mes: Number,
    dia: Number,
    n1: String,
    n2: String,
    n3: String,
    n4: String,
    n5: String,
    n6: String,
    n7: String,
    n8: String,
    n9: String,
    n10: String,
})

const extracao = mongoose.model('extracaoSchema', extracaoSchema)
module.exports = extracao