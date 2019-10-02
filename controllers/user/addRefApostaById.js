const User = require('../../models/userModel');
async function addRefApostaById(userId,apostaId){
    let user;
    try{
        user = await User.findById(userId)
        if(user == null){
            return res.status(404).json({message: 'Cannot find user!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    user.apostas.push(apostaId)
    try{
        await user.save();
    } catch(err){
        res.status(400).json({message: err.message})
    }
}

module.exports = addRefApostaById