const User = require('../../models/userModel');
const Extracao = require('../../models/extracoesModel')
async function verificaSeGanhou(idExtracao){
    let allUsers;
    let extracao;
    try{
        extracao = await Extracao.findById(idExtracao)
        if(extracao == null){
            return res.status(404).json({message: 'Cannot find extracao!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    try{
        allUsers = await User.find().populate('apostas')
        if(allUsers == null){
            return res.status(404).json({message: 'Cannot find allUsers!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    console.log('AllUsers = ', allUsers.apostas)
    let usersFiltered = allUsers.filter((item)=>{
        let user = false
        item.apostas.map( item=> {
            if(//item.data == extracao.data && 
                item.periodo === extracao.periodo) user = true;  
        })
        return user;
    })
    console.log(usersFiltered)
    // try{
    //     await aposta.save();
    // } catch(err){
    //     res.status(400).json({message: err.message})
    // }
}

module.exports = verificaSeGanhou