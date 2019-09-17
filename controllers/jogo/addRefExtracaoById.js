const Jogo = require('../../models/jogoModel');

async function addRefExtracaoById(jogoId,extracaoId){
    let jogo;
    try{
        jogo = await Jogo.findById(jogoId)
        if(jogo == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    jogo.extracoes.push(extracaoId)
    try{
        await jogo.save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = addRefExtracaoById