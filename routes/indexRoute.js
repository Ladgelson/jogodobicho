const express = require('express');
const router = express.Router();
const jogo = require('../models/jogoModel')

// GET
router.get('/', async (req,res)=>{
    try{
        const myjogo = await jogo.find()
        res.send(myjogo)
    }catch(err){
        res.status(500).json({message: err.message})
    }
});

// POST
router.post('/', async (req,res)=>{
    const j = new jogo({
        users: [],
        extracoes: []
    })
    try{
        const newJ = await j.save()
        res.status(201).json(newJ)
    } catch {
        res.status(400).json({message: err.message})
    }
})

// DELETE 
router.delete('/:id', getJogo , async (req,res)=>{
    try {
        await res.j.remove()
        res.json({message: 'Jogo deletado'})
    } catch {
        console.log('aqui2')
        res.status(500).json({message: 'erro'})
    }
})

async function getJogo(req, res, next){
    let j
    try{
        j = await jogo.findById(req.params.id)
        if(j == null){
            return res.status(404).json({message: 'Cannot find jogo'})
        }
    } catch {
        console.log('aqui1')
        return res.status(500).json({message: 'erro'})
    }
    res.j = j
    next()
}

module.exports = router;