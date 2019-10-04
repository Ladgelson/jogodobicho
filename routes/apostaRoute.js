const express = require('express');
const router = express.Router();
const Aposta = require('../models/apostasModel');
const getUser = require('../controllers/user/getUserByIdOfPath');
const addRefApostaById = require('../controllers/user/addRefApostaById');

// GET
router.get('/:id/apostas', getUser, async (req, res) => {
    try {
        const user = res.user.apostas
        res.send(user);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// // POST
router.post('/:id/apostas', getUser, async (req, res) => {
    const aposta = new Aposta({
        user: req.params.id,
        tipo: req.body.tipo,
        items: []
    });
    addRefApostaById(req.params.id, aposta._id);
    try {
        const newAposta = await aposta.save();
        res.status(201).json(newAposta);
    } catch {
        res.status(400).json({ message: "Can't save aposta!" });
    }
});

module.exports = router;