const express = require('express');
const router = express.Router();
const Resultado = require('../models/resultadosModel');
const addRefResultById = require('../controllers/extracao/addRefResultById');
// const getResultado = require('../controllers/extracao/getExtracaoByIdOfPath');

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
        num: req.body.num
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
// router.delete('/:id', getExtracao, async (req, res) => {
//     try {
//         await res.extracao.remove();
//         res.json({ message: 'Extracao Deleted' });
//     } catch (err) {
//         res.status(500).json({ message: err.message });
//     }
// });

module.exports = router;