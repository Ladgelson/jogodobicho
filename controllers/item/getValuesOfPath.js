const Aposta = require('../../models/apostasModel')
const Item = require('../../models/itemModel')
async function getValues(req, res, next){
    let aposta
    try{
        aposta = await Aposta.findById(req.params.idAposta)
        if(aposta == null){
            return res.status(404).json({message: 'Cannot find aposta'})
        }
        //console.log(aposta)
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    res.aposta = aposta
    let items
    try{
        items = await Item.find({ 'aposta': req.params.idAposta })
        if(items == null){
            return res.status(404).json({message: 'Cannot find items'})
        }
        //console.log(items)
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    res.items = items
    next()
}

module.exports = getValues