const express = require('express');
const router = express.Router();
const User = require('../models/userModel');
const addRefUserById = require('../controllers/jogo/addRefUserById');
const removeRefUserById = require('../controllers/jogo/removeRefUserById');

const userTypes = {
    1: 'Usuário Comum',
    2: 'Cambista',
    3: 'Cambista Ilimitado'
}

// GET
router.get('/allUsers/:page', async (req, res) => {
    const resPerPage = 9; // results per page
    const page = req.params.page || 1; // Page
    try {
        let usersFound = await User.find()
            .skip((resPerPage * page)-resPerPage)
            .limit(resPerPage)

        usersFound = usersFound.map((item)=> {
            return {
                nome: item.nome,
                tipo: item.tipo,
                saldo: item.saldo
            }
        })
        //console.log(usersFound)
        const numOfUsers = await User.countDocuments();
                                
        const usersDTO = {
            users: usersFound, 
            currentPage: page, 
            pages: Math.ceil(numOfUsers / resPerPage), 
            numOfResults: numOfUsers
        }
        res.send(usersDTO);
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
        nome: req.body.nome,
        login: req.body.login,
        senha: req.body.senha,
        saldo: req.body.saldo,
        porcentagem: req.body.porcentagem,
        adm: req.body.adm,
        tipo: req.body.tipo,
        apostas: []
    });
    addRefUserById(user._id);
    try {
        const newUser = await user.save();
        res.status(201).json(newUser);
    } catch {
        res.status(400).json({ message: "Cannot save user!" });
    }
});

// PATCH
router.patch('/:id', getUser, async (req, res) => {
    if (req.body.saldo != null) {
        res.user.saldo += req.body.saldo
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
    // apaga ref de user em jogo
    removeRefUserById(res.user._id)
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