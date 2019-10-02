const express = require('express');
const router = express.Router();
const Aposta = require('../models/apostasModel');
const getUser = require('../controllers/user/getUserByIdOfPath');
const addRefApostaById = require('../controllers/user/addRefApostaById');

// GET
router.get('/:id/apostas', getUser, async (req, res) => {
    try {
        const user = res.user
        res.send(user.apostas);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// // POST
router.post('/:id/apostas', getUser, async (req, res) => {
    const aposta = new Aposta({
        user: req.params.id,
        tipo: req.body.tipo,
        datahora: new Date(),
        items: []
    });
    addRefApostaById(aposta.user, aposta._id);
    try {
        const newAposta = await aposta.save();
        res.status(201).json(newAposta);
    } catch {
        res.status(400).json({ message: "Can't save aposta!" });
    }
});

// // PATCH
// router.patch('/:id', getUser, async (req, res) => {
//     if (req.body.nome != null) {
//         res.user.nome = req.body.nome
//     }
//     try {
//         const updatedUser = await res.user.save();
//         res.json(updatedUser);
//     } catch (err) {
//         res.status(400).json({ message: err.message });
//     }
// });

// // DELETE 
// router.delete('/:id', getUser, async (req, res) => {
//     try {
//         await res.user.remove();
//         res.json({ message: 'User Deleted' });
//     } catch (err) {
//         res.status(500).json({ message: err.message });
//     }
// });

// async function getUser(req, res, next) {
//     let user;
//     try {
//         user = await User.findById(req.params.id)
//         if (user == null) {
//             return res.status(404).json({ message: 'Cannot find user' });
//         }
//     } catch (err) {
//         return res.status(500).json({ message: err.message });
//     }

//     res.user = user;
//     next();
// }

module.exports = router;