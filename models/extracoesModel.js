const mongoose = require('mongoose');
const extracaoSchema = new mongoose.Schema({
    periodo: Number,
    data: Date,
    n1: Number,
    n2: Number,
    n3: Number,
    n4: Number,
    n5: Number,
    n6: Number,
    n7: Number,
    n8: Number,
    n9: Number,
    n10: Number,
})

const extracao = mongoose.model('extracaoSchema', extracaoSchema)
module.exports = extracao