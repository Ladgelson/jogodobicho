const express = require('express');
const router = express.Router();
const Aposta = require('../models/apostasModel');
const Extracao = require('../models/extracoesModel');
const addRefExtracaoById = require('../controllers/jogo/addRefExtracaoById');
const getExtracao = require('../controllers/extracao/getExtracaoByIdOfPath');
const removeRefExtracaoById = require('../controllers/jogo/removeRefExtracaoById');
const verificaSeGanhou = require('../controllers/aposta/verificaSeGanhou');
const moment = require('moment');

router.get('/:page', async (req, res, next) => {
    // Declaring variable
    const resPerPage = 9; // results per page
    const page = req.params.page || 1; // Page 
    try {
        const foundExtracoes = await Extracao.find({})
            .skip((resPerPage * page) - resPerPage)
            .limit(resPerPage);
        // Count how many products were found
        const numOfExtracoes = await Extracao.countDocuments();
        // Renders The Page
        const extracoesDTO = {
            extracoes: foundExtracoes, 
            currentPage: page, 
            pages: Math.ceil(numOfExtracoes / resPerPage), 
            numOfResults: numOfExtracoes
        }
        res.send(extracoesDTO);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
});

// POST
router.post('/', async (req, res) => {
    const extracao = new Extracao({
        periodo: req.body.periodo,
        ano: moment().get('year'),
        mes: moment().get('month'),
        dia: moment().get('date'),
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
    let allApostas;
    try{
        allApostas = await Aposta.find()
        if(allApostas == null){
            return res.status(404).json({message: 'Cannot find apostas!'})
        }
    } catch {
        return res.status(500).json({message: 'erro'})
    }
    verificaSeGanhou(extracao,allApostas)
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