var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');

/* GET home page. */
router.get('/', async function(req, res, next) {

  var novedades = await novedadesModel.getNovedades()

  res.render('index', {
    novedades
  });
});


router.post('/', async (req, res, next) => {

  console.log(req.body) // Estoy capturando datos?¿

  var nombre = req.body.nombre;
  var apellido = req.body.apellido;
  var email = req.body.email;
  var telefono = req.body.telefono;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'estebaneduardofunes@gmail.com',
    subjet: 'CONTACTO WEB',
    html: nombre + " " + apellido + " se contacto a través de la web y quiere más información a este correo : " + email + ". <br> Además, hizo este comentario : " + mensaje + ". <br> Su tel es: " + telefono
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente'
  });
});


module.exports = router;
