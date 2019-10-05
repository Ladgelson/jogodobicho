const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const apostasSchema = new mongoose.Schema({
    tipo: Number,
    datahoraAposta: Date,
    data: Date,
    periodo: Number,
    items: [{ type: Schema.Types.ObjectId, ref: 'apostaSchema'}],
    ganhou: Boolean,
})
const apostas = mongoose.model('apostasSchema', apostasSchema)
module.exports = apostas