const Jogo = require('../../models/jogoModel');

async function removeRefExtracaoById(extracaoId){
    let jogo;
    try{
        jogo = await Jogo.find()
        if(jogo == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    const index = jogo[0].extracoes.indexOf(extracaoId)
    jogo[0].extracoes.splice(index,1)
    try{
        await jogo[0].save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = removeRefExtracaoById