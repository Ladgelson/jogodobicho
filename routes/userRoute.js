const express = require('express');
const router = express.Router();
const jogo = require('../models/userModel')

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
    
})

module.exports = router;