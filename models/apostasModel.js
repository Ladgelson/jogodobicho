const mongoose = require('mongoose');

const apostasSchema = new mongoose.Schema({
    user : { type: Schema.Types.ObjectId, ref: 'userSchema' },
    tipo: Number,
    datahora: Date,
    apostas: [{ type: Schema.Types.ObjectId, ref: 'apostaSchema'}]
})
const apostas = mongoose.model('apostasSchema', apostasSchema)
module.exports(apostas)