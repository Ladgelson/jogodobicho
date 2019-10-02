const mongoose = require('mongoose');
const Schema = mongoose.Schema;
const apostasSchema = new mongoose.Schema({
    tipo: Number,
    datahora: Date,
    items: [{ type: Schema.Types.ObjectId, ref: 'apostaSchema'}]
})
const apostas = mongoose.model('apostasSchema', apostasSchema)
module.exports = apostas