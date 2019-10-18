const express = require('express');
const router = express.Router();
const Extracao = require('../models/extracoesModel');
const addRefExtracaoById = require('../controllers/jogo/addRefExtracaoById');
const getExtracao = require('../controllers/extracao/getExtracaoByIdOfPath');
const removeRefExtracaoById = require('../controllers/jogo/removeRefExtracaoById');
const verificaSeGanhou = require('../controllers/aposta/verificaSeGanhou');

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
        periodo: req.body.periodo,
        datahora: new Date(),
        n1: req.body.n1,
        n2: req.body.n2,
        n3: req.body.n3,
        n4: req.body.n4,
        n5: req.body.n5,
        n6: req.body.n6,
        n7: req.body.n7,
        n8: req.body.n8,
        n9: req.body.n9,
        n10: req.body.n10,
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
    // apagar extração 
    try {
        await res.extracao.remove();
        res.json({ message: 'Extracao Deleted' });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

module.exports = router;