const express = require('express');
const router = express.Router();
const user = require('../models/userModel')

// GET
router.get('/', async (req,res)=>{
    try{
        const u = await user.find()
        res.send(u)
    }catch(err){
        res.status(500).json({message: err.message})
    }
});

// POST
router.post('/', async (req,res)=>{
    const u = new user({
        jogo: "5d7ef18aa0ba9b33582b9e08"
    })
    console.log(u)
    try{
        const newUser = await u.save()
        res.status(201).json(newUser)
    } catch {
        res.status(400).json({message: "aqui dnv"})
    }
})

// DELETE 
// router.delete('/:id', getJogo , async (req,res)=>{
//     try {
//         await res.j.remove()
//         res.json({message: 'Jogo deletado'})
//     } catch {
//         console.log('aqui2')
//         res.status(500).json({message: 'erro'})
//     }
// })

module.exports = router;