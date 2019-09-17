const jogo = require('../../models/jogoModel')
async function getJogo(req, res, next){
    let j
    try{
        j = await jogo.findById(req.params.id)
        if(j == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    res.jogo = j
    next()
}

module.exports = getJogo