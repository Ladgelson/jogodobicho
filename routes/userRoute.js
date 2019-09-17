const express = require('express');
const router = express.Router();
const User = require('../models/userModel')

// GET
router.get('/', async (req,res)=>{
    try{
        const u = await User.find()
        res.send(u)
    }catch(err){
        res.status(500).json({message: err.message})
    }
});

// GET-by-ID
router.get('/:id',getUser,(req,res)=>{
    res.send(res.user);
})

// POST
router.post('/', async (req,res)=>{
    const u = new User({
        jogo: "5d801d6e25e8ce32c878df67",
        nome: req.body.nome,
        login: req.body.login,
        senha: req.body.senha,
        saldo: req.body.saldo,
        adm: req.body.adm,
        cambista: req.body.cambista,
        apostas: []
    })
    console.log(u)
    try{
        const newUser = await u.save()
        res.status(201).json(newUser)
    } catch {
        res.status(400).json({message: "aqui dnv"})
    }
});


// DELETE 
router.delete('/:id', getUser , async (req,res)=>{
    try {
        await res.j.remove()
        res.json({message: 'Jogo deletado'})
    } catch {
        console.log('aqui2')
        res.status(500).json({message: 'erro'})
    }
});


async function getUser (req,res,next){
    let user;
    try {
        user = await User.findById(req.params.id)
        if(user == null){
            return res.status(404).json({message:'Cannot find user'});
        }
    } catch (err){
        return res.status(500).json({message:err.message});
    }

    res.user = user;
    next();
}



module.exports = router;