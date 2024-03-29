const express = require('express');
const router = express.Router();
const jogo = require('../models/jogoModel');
const getJogo = require('../controllers/jogo/getJogoByIdOfPath');
const Porcentagem = require('../models/porcentagemModel')

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
    const porcentagens = [
        new Porcentagem({
            valor: 5,
        }),
        new Porcentagem({
            valor: 10,
        }),
        new Porcentagem({
            valor: 15,
        }),
        new Porcentagem({
            valor: 20,
        }),
    ]
    try{
        const p = await porcentagens.save()
        res.status(201).json(p)
    } catch {
        res.status(400).json({message: err.message})
    }
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
        res.status(500).json({message: 'erro'})
    }
})

// UPDATE
router.patch('/:id', getJogo, async (req,res)=> {
    if(req.body.user != null){
        res.jogo.users.push(req.body.user);
    }
    if(req.body.extracao != null){
        res.jogo.extracoes.push(req.body.extracao);  
    }
    try{
        const updatedUser = await res.jogo.save();
        res.json(updatedUser);
    } catch(err){
        res.status(400).json({message: err.message})
    }
})

module.exports = router;