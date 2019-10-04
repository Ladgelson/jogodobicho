const express = require('express');
const router = express.Router();
const Item = require('../models/itemModel')
const getValues = require('../controllers/item/getValuesOfPath');
const addRefItemById = require('../controllers/aposta/addRefItemById');

// GET
router.get('/:id/apostas/:idAposta/items', getValues, async (req, res) => {
    try {
        const aposta = res.items
        //console.log(res.items)
        res.send(aposta);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// POST
router.post('/:id/apostas/:idAposta/items', getValues, async (req, res) => {
    const item = new Item({
        aposta: req.params.idAposta,
        posicao: req.body.posicao,
        valor: req.body.valor,
        bicho: req.body.bicho
    });
    addRefItemById(req.params.idAposta, item._id);
    try {
        const newItem = await item.save();
        res.status(201).json(newItem);
    } catch {
        res.status(400).json({ message: "Can't save item!" });
    }
});

module.exports = router;