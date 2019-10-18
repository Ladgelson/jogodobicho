const Extracao = require('../../models/extracoesModel');
const Aposta = require('../../models/apostasModel');
const bichos = require('./bichos');
const bichosDaExtracao = require('./bichosDaExtracao');
const bichosDaAposta = require('./bichosDaAposta')

async function verificaSeGanhou(idExtracao){
    let allApostas;
    let extracao;
    console.log('aqui1')
    try{
        extracao = await Extracao.findById(idExtracao)
        if(extracao == null){
            return res.status(404).json({message: 'Cannot find extracao!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    console.log('aqui2')
    try{
        allApostas = await Aposta.find()
        if(allApostas == null){
            return res.status(404).json({message: 'Cannot find apostas!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    console.log('aqui3')
    let apostasDaExtracao = allApostas.filter((item)=>{
        let aposta = false
        if(//item.data == extracao.data && 
            item.periodo === extracao.periodo) aposta = true;  
        return aposta;
    })

    const bichosExtracao = bichosDaExtracao(extracao)
    console.log('AQUIIIIIIIII')
    apostasDaExtracao.map(async (item)=> {
        console.log('dflksdjfkdsfk')
        let ganhou = false
        let bichosAposta = bichosDaAposta(item.apostas)
        bichosExtracao.map((item)=> {
            if(bichosAposta.includes(item)){
               ganhou = true 
            }
        })
        if(ganhou){
            item.ganhou = true
            try {
                await item.save()
            } catch(err) {
                res.status(400).json({message: err.message})
            }
        }
    })

    // try{
    //     await aposta.save();
    // } catch(err){
    //     res.status(400).json({message: err.message})
    // }
}

module.exports = verificaSeGanhou