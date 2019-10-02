const Extracao = require('../../models/extracoesModel');

async function addRefResultById(extracaoId,resultadoId){
    let extracao;
    console.log('Extracao >', extracaoId)
    console.log('resultado >', resultadoId)
    try{
        extracao = await Extracao.findById(extracaoId)
        if(extracao == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    extracao.resultados = resultadoId
    try{
        await extracao.save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = addRefResultById