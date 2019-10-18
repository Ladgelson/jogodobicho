const bichosDaExtracao = require('./bichosDaExtracao');
const bichosDaAposta = require('./bichosDaAposta')

async function verificaSeGanhou(extracao,allApostas){
    // console.log(`extracao: ${JSON.stringify(extracao)}`)
    // console.log(`allApostas: ${JSON.stringify(allApostas)}`)
    let apostasDaExtracao = allApostas.filter((item)=>{
        let aposta = false
        if(//item.data == extracao.data && 
            item.periodo === extracao.periodo) aposta = true;  
        return aposta;
    })
    console.log(apostasDaExtracao)

    const bichosExtracao = bichosDaExtracao(extracao)
    console.log('AQUIIIIIIIII')
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

    // try{
    //     await aposta.save();
    // } catch(err){
    //     res.status(400).json({message: err.message})
    // }
}

module.exports = verificaSeGanhou