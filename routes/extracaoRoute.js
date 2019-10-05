const express = require('express');
const router = express.Router();
const Extracao = require('../models/extracoesModel');
const Resultado = require('../models/resultadosModel');
const addRefExtracaoById = require('../controllers/jogo/addRefExtracaoById');
const getExtracao = require('../controllers/extracao/getExtracaoByIdOfPath');
const removeRefExtracaoById = require('../controllers/jogo/removeRefExtracaoById');
const verificaSeGanhou = require('../controllers/aposta/verificaSeGanhou');

// GET
router.get('/', async (req, res) => {
    try {
        const extracao = await Extracao.find().populate('resultados');
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
        periodo: req.body.periodo,
        datahora: req.body.datahora
    });
    addRefExtracaoById(extracao._id);
    verificaSeGanhou(extracao.id)
    try {
        const newExtracao = await extracao.save();
        res.status(201).json(newExtracao);
    } catch {
        res.status(400).json({ message: "Cannot save extração!" });
    }
});

// DELETE 
router.delete('/:id', getExtracao, async (req, res) => {
    removeRefExtracaoById(res.extracao._id)
    // apagar lista de resultados de uma estração
    try{    
        const result = await Resultado.findById(res.extracao.resultados._id)
        await result.remove()
    } catch(err) {
        res.status(500).json({ message: err.message });
    }
    // apagar extração 
    try {
        await res.extracao.remove();
        res.json({ message: 'Extracao Deleted' });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

module.exports = router;