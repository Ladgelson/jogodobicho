const Jogo = require('../../models/jogoModel');

async function addRefExtracaoById(extracaoId){
    let jogo;
    try{
        jogo = await Jogo.find()
        if(jogo == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    jogo[0].extracoes.push(extracaoId)
    try{
        await jogo[0].save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = addRefExtracaoById