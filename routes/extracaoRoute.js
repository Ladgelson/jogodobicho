const express = require('express');
const router = express.Router();
const Extracao = require('../models/extracoesModel');
const addRefExtracaoById = require('../controllers/jogo/addRefExtracaoById');
const getExtracao = require('../controllers/extracao/getExtracaoByIdOfPath');

// GET
router.get('/', async (req, res) => {
    try {
        const extracao = await Extracao.find();
        res.send(extracao);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// GET-by-ID
router.get('/:id', getExtracao, (req, res) => {
    res.send(res.extracao);
});

// POST
router.post('/', async (req, res) => {
    const extracao = new Extracao({
        periodo: 1,
        datahora: Date.now()
    });
    addRefExtracaoById(extracao.jogo, extracao._id);
    try {
        const newExtracao = await extracao.save();
        res.status(201).json(newExtracao);
    } catch {
        res.status(400).json({ message: "Cannot save it!" });
    }
});

// DELETE 
router.delete('/:id', getExtracao, async (req, res) => {
    try {
        await res.extracao.remove();
        res.json({ message: 'Extracao Deleted' });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

module.exports = router;