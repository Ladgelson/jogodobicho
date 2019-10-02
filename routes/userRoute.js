const express = require('express');
const router = express.Router();
const User = require('../models/userModel');
const addRefUserById = require('../controllers/jogo/addRefUserById');

// GET
router.get('/', async (req, res) => {
    try {
        const user = await User.find();
        res.send(user);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// GET-by-ID
router.get('/:id', getUser, (req, res) => {
    res.send(res.user);
});

// POST
router.post('/', async (req, res) => {
    const user = new User({
        jogo: "5d815d69c82b714788c4f4af",
        nome: req.body.nome,
        login: req.body.login,
        senha: req.body.senha,
        saldo: req.body.saldo,
        adm: req.body.adm,
        cambista: req.body.cambista,
        apostas: []
    });
    addRefUserById(user.jogo, user._id);
    try {
        const newUser = await user.save();
        res.status(201).json(newUser);
    } catch {
        res.status(400).json({ message: "Cannot save it!" });
    }
});

// PATCH
router.patch('/:id', getUser, async (req, res) => {
    if (req.body.saldo != null) {
        res.user.saldo = req.body.saldo
    }
    try {
        const updatedUser = await res.user.save();
        res.json(updatedUser);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
});

// DELETE 
router.delete('/:id', getUser, async (req, res) => {
    try {
        await res.user.remove();
        res.json({ message: 'User Deleted' });
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

async function getUser(req, res, next) {
    let user;
    try {
        user = await User.findById(req.params.id).populate('apostas')
        if (user == null) {
            return res.status(404).json({ message: 'Cannot find user' });
        }
    } catch (err) {
        return res.status(500).json({ message: err.message });
    }

    res.user = user;
    next();
}

module.exports = router;