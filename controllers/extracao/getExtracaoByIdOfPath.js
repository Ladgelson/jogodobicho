const Extracao = require('../../models/extracoesModel')
async function getExtracao(req, res, next){
    let extracao
    try{
        extracao = await Extracao.findById(req.params.id)
        if(extracao == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    res.extracao = extracao
    next()
}

module.exports = getExtracao