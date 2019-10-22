const express = require('express');
const router = express.Router();
const Aposta = require('../models/apostasModel');
const getUser = require('../controllers/user/getUserByIdOfPath');
const addRefApostaById = require('../controllers/user/addRefApostaById');
const moment = require('moment');

// GET
router.get('/:id/apostas/:page', async (req, res) => {
    const resPerPage = 9; // results per page
    const page = req.params.page || 1; // Page
    try {
        const foundApostas 
            = await Aposta
                .find({user: req.params.id})
                .skip((resPerPage*page)-resPerPage)
                .limit(resPerPage)
        const numOfApostas = await Aposta.countDocuments({user: req.params.id});
        const apostasDTO = {
            apostas: foundApostas, 
            currentPage: page, 
            pages: Math.ceil(numOfApostas / resPerPage), 
            numOfResults: numOfApostas
        }
        res.send(apostasDTO);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// // POST
router.post('/:id/apostas', getUser, async (req, res) => {
    let total = 0
    for(let i = 1; i <= 10; i++){
        if(req.body[`v${i}`]){
            total += req.body[`v${i}`]
        }
    }
    if((res.user.saldo - total) >= 0){
        try {
            res.user.saldo-= total
            const user = await res.user.save();
            res.status(201).json(user);
        } catch {
            res.status(400).json({ message: "Can't save saldo of the user!" });
        }
        const aposta = new Aposta({
            nomeDoApostador: req.body.nomeDoApostador,
            user: req.params.id,
            tipo: req.body.tipo,
            datahoraAposta: new Date(),
            ano: moment().get('year'),
            mes: moment().get('month'),
            dia: moment().get('date'),
            periodo: req.body.periodo,
            i1: req.body.i1,
            i2: req.body.i2,
            i3: req.body.i3,
            i4: req.body.i4,
            i5: req.body.i5,
            i6: req.body.i6,
            i7: req.body.i7,
            i8: req.body.i8,
            i9: req.body.i9,
            i10: req.body.i10,
            v1: req.body.v1,
            v2: req.body.v2,
            v3: req.body.v3,
            v4: req.body.v4,
            v5: req.body.v5,
            v6: req.body.v6,
            v7: req.body.v7,
            v8: req.body.v8,
            v9: req.body.v9,
            v10: req.body.v10,
            ganhou: req.body.ganhou,
        });
        addRefApostaById(req.params.id, aposta._id);
        try {
            const newAposta = await aposta.save();
            res.status(201).json(newAposta);
        } catch {
            res.status(400).json({ message: "Can't save aposta!" });
        }
    } else {
        res.status(202).json({ message: "Saldo insuficient!" });
    }
});

router.get('/allApostas/:page', async (req, res) => {
    const resPerPage = 9; // results per page
    const page = req.params.page || 1; // Page
    try {
        const foundApostas =
            await Aposta.find()
                        .skip((resPerPage*page)-resPerPage)
                        .limit(resPerPage);
        const numOfApostas = await Aposta.countDocuments();
        const apostasDTO = {
            apostas: foundApostas, 
            currentPage: page, 
            pages: Math.ceil(numOfApostas / resPerPage), 
            numOfResults: numOfApostas
        }
        res.send(apostasDTO);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

module.exports = router;