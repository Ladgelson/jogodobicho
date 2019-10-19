const bichosDaExtracao = require('./bichosDaExtracao');
const bichosDaAposta = require('./bichosDaAposta')

async function verificaSeGanhou(extracao,allApostas){
    let apostasDaExtracao = allApostas.filter((item)=>{
        return item.dia === extracao.dia &&
                item.mes === extracao.mes &&
                item.ano === extracao.ano &&  
                item.periodo === extracao.periodo
    })
    const bichosExtracao = bichosDaExtracao(extracao)
    apostasDaExtracao.map(async (item)=> {
        let ganhou = false
        let bichosAposta = bichosDaAposta(item)
        console.log('bichosAposta',bichosAposta)
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
}

module.exports = verificaSeGanhou