const Aposta = require('../../models/apostasModel');
async function addRefItemById(apostaId,itemId){
    let aposta;
    try{
        aposta = await Aposta.findById(apostaId)
        if(aposta == null){
            return res.status(404).json({message: 'Cannot find aposta!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    aposta.items.push(itemId)
    try{
        await aposta.save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = addRefItemById