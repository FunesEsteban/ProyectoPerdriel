-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 23-03-2023 a las 03:13:32
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectoperdriel1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(7, 'El bulldog francés requiere atención veterinaria toda su vida.', 'Son una de las razas de perros más solicitadas. Producto de diversas modificaciones genéticas, llegan a sufrir varias patologías. Las principales causas de consulta en el veterinario y los problemas más frecuentes.', 'Como su nombre lo indica, este bulldog es originario de Francia. En las redes sociales se popularizó rápidamente, llegó a valer hasta 200 mil pesos en el mercado argentino. Son perros de moda, sin embargo, es importante conocer sobre sus requerimientos. Fernando Lobo, presidente del Colegio de Médicos Veterinarios de Misiones, se refirió a las complicaciones que acarrea la raza.\r\nEsta raza es braquicéfala, es decir que se caracteriza por tener la cara plana u hocico chato. Esto no es un fenómeno natural, sino que surgió a partir de experimentos y mutaciones genéticas realizadas por las personas. Viven de 8 a 10 años y son propensos a padecer problemas respiratorios.\r\n“El que quiere comprar un bulldog francés debe saber que el animal va a requerir atención médica toda su vida. No es una raza para cualquier persona”, advirtió el veterinario en comunicación con El Doce. Es que al presupuesto para adquirirlos también se le suman los costos médicos.'),
(8, 'La palabra del doctor Romero frente al veterinario imputado por vender medicamentos oncológicos para humanos.', 'Las drogas eran vendidas a centros veterinarios y/o revendedores con el fin de que luego sean suministrados a animales. Por qué este caso representa un mal entendido comercial y no un atentado contra la salud pública.', 'La Policía de la Ciudad allanó una veterinaria en el barrio de Núñez, secuestró medicamentos oncológicos supuestamente prohibidos para uso de animales, e imputó al responsable del lugar por el delito de suministro supuestamente infiel de medicamentos.\r\n\r\nA raíz de una denuncia recibida en septiembre del año pasado, la división Delitos Contra la Salud y Seguridad Personal de la Policía de la Ciudad, investigó la ruta de ciertos medicamentos oncológicos, indicados para seres humanos, que eran vendidos a centros veterinarios y/o revendedores, con el fin de que posteriormente sean suministrados a animales.\r\n\r\nA poco de iniciada la investigación, fueron allanadas cinco farmacias, una droguería, y cuatro centros veterinarios, logrando el secuestro de gran cantidad de recetas, documentación y medicamentos, que comprobó la maniobra investigada.'),
(2, 'Jugaba a ser veterinario con su caballo: pensaron que lo habían descuartizado pero lo que descubrieron los impactó.', 'Le aplicaba medicamentos vencidos y el animal casi paga con su vida la irresponsabilidad del humano.', 'Derramaba pus, tenía la mirada perdida mientras, con las pocas fuerzas que tenía, rompía una bolsa de basura para poder comer, al menos, algo. Habían dado con él gracias al aviso de la policía y los vecinos del lugar. Creían que habían querido descuartizarlo. Una enorme herida en su cuello era la evidencia que todos necesitaban ver para entender que el animal estaba sufriendo.\r\n“Llegamos al lugar con insumos como para vendarlo y trasladarlo con urgencia. La zona era complicada, como muchas de los barrios populares de Quilmes. Boldo estaba a la vera del arroyo, donde los carreros se deshacen de los cuerpos moribundos y sin vida de los caballos que ya no les sirven. Nos esperaban dos patrullas y se acercaron varios hombres a decir que el caballo era de ellos. Uno en particular insistía en que el animal era de su propiedad y que lo estaba medicando, que de ninguna manera iba a permitir nos lo lleváramos al hospital”, relata Karina Dotto, presidente de la Asociación Caballos de Quilmes, que rescata equinos en estado de abandono y maltrato en esa localidad de la provincia de Buenos Aires.'),
(6, 'Perros y gatos rescatados de huaicos son atendidos por veterinarias solidarias.', 'Profesionales en atención a mascotas piden voluntarios, productos y colaboración económica en Lima.', 'Durante una emergencia, la prioridad es salvar a las personas, pero la vida de los animales también cuenta y por esta razón algunas veterinarias solidarias se han desplazado a las zonas afectadas por los recientes huaicos, logrando dar auxilio a más de 200 animales, entre perros y gatos, que lucharon también para sobrevivir en medio del desastre natural.\r\n“Desde el 18 de marzo hemos atendido a más de 180 animalitos, entre gatos y perros de Cieneguilla y Pachacámac. Hoy estamos en Vallecito de Chaclacayo, donde ya hemos atendido a 40 perritos”, detalló Katia Paz, representante de la clínica Wawow. \r\nLas atenciones han sido en su mayoría por heridas infectadas, golpes, deshidratación y fracturas. El 98 % de atenciones fueron para canes. \r\n“Los perritos han caído a los huaicos y han sido golpeados por rocas, por eso tienen abscesos, heridas profundas. Muchos han tenido heridas abiertas porque han intentado nadar y se han chocado con muchas cosas.  Tuvimos una perrita adulta mayor, a la que le cayó un muro y estuvo muy grave, lamentablemente no pudo sobrevivir”.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'Esteban', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
