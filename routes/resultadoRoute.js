const express = require('express');
const router = express.Router();
const Resultado = require('../models/resultadosModel');
const addRefResultById = require('../controllers/extracao/addRefResultById');
const getResultado = require('../controllers/extracao/getExtracaoByIdOfPath');

// GET
router.get('/:id/resultados', async (req, res) => {
    try {
        const resultado = await Resultado.find();
        res.send(resultado);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// POST
router.post('/:id/resultados', async (req, res) => {
    const resultado = new Resultado({
        extracao: req.params.id,
        bicho: req.body.bicho,
        n1: req.body.n1,
        n2: req.body.n2,
        n3: req.body.n3,
        n4: req.body.n4,
        n5: req.body.n5,
        n6: req.body.n6,
        n7: req.body.n7,
        n8: req.body.n8,
        n9: req.body.n9,
        n10: req.body.n10
    });
    addRefResultById(resultado.extracao, resultado._id);
    try {
        const newResult = await resultado.save();
        res.status(201).json(newResult);
    } catch {
        res.status(400).json({ message: "Cannot save it!" });
    }
});

// DELETE 
router.delete('/:id/resultados', async (req, res) => {
    try {
        await Resultado.find().remove()
        res.json({ message: 'All resultados Deleted' });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

module.exports = router;