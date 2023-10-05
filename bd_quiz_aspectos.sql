-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-10-2023 a las 18:57:32
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_quiz_aspectos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
(1, 'admin', 'admin', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `respondidas` int(11) NOT NULL,
  `completados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
(1, 59, 63, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `correcta` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
(1, 1, 'Un contrato laboral es...', 'Un acuerdo entre proveedor y cliente.', 'Un tipo de acuerdo privado que vincula legalmente al empleador con un empleado.', 'Un acuerdo entre un arrendador y un arrendatario.', 'B'),
(2, 1, '¿Cuál de los siguientes no es un contrato laboral?', 'A plazo fijo', 'De temporada', 'De Seguro (Póliza)', 'C'),
(3, 1, 'La característica principal de los contratos laborales de temporada es...', 'Implica la cesión del uso y disfrute de una propiedad por parte del arrendador al arrendatario', 'Por la naturaleza de la actividad de la empresa, las tareas se desarrollan sólo durante determinadas épocas del año y se repiten anualmente.', 'Una persona se compromete a dar una cosa y la otra a pagarla.', 'B'),
(4, 1, '¿Qué indica la norma sobre la capacidad de las partes en un contrato laboral?', 'Las personas desde los 16 y menores de 18 años pueden celebrar contratos de trabajo con autorización de los padres', 'Las personas entre 10 y 16 años pueden celebrar contratos laborales.', 'Ninguna de las anteriores', 'A'),
(5, 1, 'Sobre la existencia de un contrato en cuanto al consentimiento de las partes...', 'Se omite el consentimiento de las partes que participan.', 'El contrato existe pero las partes pueden modificarlas después de firmarlo.', 'Para la existencia de un contrato laboral, este debe celebrarse en común acuerdo. Ambas partes deben aceptar los términos que figuran en el contrato.', 'C'),
(6, 1, '¿Qué es un contrato laboral a tiempo parcial?', 'Acuerdo donde la empresa no establece un límite de tiempo para el término del acuerdo.', 'Acuerdo en el que el trabajador presta servicios durante un determinado número de horas al día o la semana, menos de dos tercios de la jornada habitual de la actividad.', 'Ninguna de las anteriores', 'B'),
(7, 1, 'Un contrato de trabajo eventual...', 'Se realiza cuando no puede preverse un plazo cierto de trabajo para finalizar el contrato.', 'Se celebra para obligar a transferir temporalmente el uso y goce de una cosa mueble o inmueble a cambio de un pago determinado.', 'Detalla las obligaciones y responsabilidades que se adquieren al contratar un producto o servicio.', 'A'),
(8, 1, 'Un contrato de trabajo de grupo o por equipo es...', 'Acuerdo entre un grupo de empleadores y un empleado para desarrollar una actividad.', 'Acuerdo entre un grupo de empleadores y un grupo de trabajadores para desarrollar una actividad.', 'Acuerdo entre un empleador y un grupo de trabajadores para desarrollar una actividad o tareas comunes al equipo o grupo.', 'C'),
(9, 1, '¿Cuál de los siguientes no es un elemento de los contratos laborales?', 'Compensación monetaria: señalar en el acuerdo cuál será el salario inicialmente acordado entre las partes.', 'Descripción de las condiciones de los productos y servicios que se están contratando.', 'Horario laboral, señalar la cantidad de horas y días que el empleado desempeñará sus funciones.', 'B'),
(10, 1, 'Con respecto a la forma que tiene el contrato laboral...', 'Empleador y trabajador eligen libremente la forma en la que van a celebrar el contrato. Salvo que otras leyes o convenciones establezcan otra condición.', 'El empleador y trabajador pueden elegir libremente la forma en la que se va a celebrar el contrato.', 'La forma en que se celebrará el contrato la establece solamente el empleador.', 'A'),
(11, 2, '¿Con qué nombre se conoce el escándalo que obligó al presidente estadounidense Richard Nixon a dimitir?', 'Vietnam', 'NixonPrecess', 'Watergate', 'C'),
(12, 2, '¿Qué emperador romano legalizó el cristianismo y puso fin a la persecución de los cristianos?', 'Nerón', 'Constanstino', 'Adriano', 'B'),
(13, 2, '¿Qué hito informático de 1969 cambiaría radicalmente el curso de la historia de la humanidad?', 'El primer router wi-fi', 'La primera computadora personal', 'Internet', 'C'),
(14, 2, '¿Quién fue el primer Presidente de Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Andrew Jackson', 'A'),
(15, 2, '¿Por qué es significativo el Poema de Gilgamesh?', 'Fue un libro de estrategia militar de 500 páginas que sirvió en la antigua Mesopotamia', 'Es la primera obra épica que hace referencia a la inmortalidad y la percepción humana del alma', 'El tratado más antiguo que existe sobre el Inframundo.', 'B'),
(16, 2, '¿Cuál es el nombre de la famosa batalla donde Napoleón Bonaparte fue derrotado?', 'La batalla de Hstings', 'La batalla de Álamo', 'La batalla de Waterloo', 'C'),
(17, 2, '¿A través de qué río africano se alzó el antiguo Egipto?', 'Amazonas', 'Tigris', 'Nilo', 'C'),
(18, 2, '¿A qué filósofo griego se atribuye la famosa obra “La República”?', 'Platón', 'Sócrates', 'Aristótleles', 'A'),
(19, 2, '¿En qué año se disolvió la Unión Soviética?', 'En 1987', 'En 1989', 'En 1991', 'C'),
(20, 2, '¿Qué científico es considerado el Padre de la Bomba Atómica?', 'Albert Einsein', 'Robert Openheimer', 'Leó Szilárd', 'B'),
(21, 3, '¿Qué contienen los cloroplastos de las células vegetales?', 'Clorofila', 'Agua', 'Sábila', 'A'),
(22, 3, '¿Qué es la malacología?', 'La ciencia que estudia los hongos', 'La ciencia que estudia los molusculos', 'La ciencia que estudia los ácaros', 'B'),
(23, 3, '¿Qué significan las siglas ADN?', ' Ácido deoxinucleico', 'Ácido desorribonucleico', 'Ácido desoxirribonucleico', 'C'),
(24, 3, 'Todos los organismos en el reino Animalia son:', 'Multicelulares y autótrofos', 'Multicelulares y autótrofos', 'Unicelulares y heterótrofos', 'B'),
(25, 3, '¿Qué es un cardumen?', 'Una especie de planta', 'Un banco de peces', 'Una parte del abdomen de los insectos', 'B'),
(26, 3, 'El sistema de clasificación taxonómica actual fue ideado por:', 'Darwin', 'Pateur', 'Linneo', 'B'),
(27, 3, '¿Cuál de los siguientes animales tiene incisivos que continúan creciendo toda su vida?', 'Morsa', 'Hámster', 'Elefante', 'B'),
(28, 3, '¿Cuánto vive un erizo?', 'Aproximadamente entre 4 y 5 años', 'Aproximadamente entre 7 y 8 años', 'Aproximadamente entre 9 y 12 años', 'A'),
(29, 3, '¿Dónde realizan las plantas la fotosíntesis?', 'En las hojas', 'En la raíz', 'En el aire', 'A'),
(30, 3, '¿Qué músculo impulsa la sangre por todo nuestro cuerpo?', 'El cerebro', 'Los pulmones', 'El corazón', 'C'),
(31, 4, '¿Cómo se llama en tenis un punto de saque directo?', 'Revés', 'Love', 'Ace', 'C'),
(32, 4, 'En natación, ¿cuánto mide de largo una piscina de competición para olimpiadas y mundiales?', '50 metros', '25 metros', '30 metros', 'A'),
(33, 4, '¿Con cuántos jugadores en pista juega un equipo de voleibol?', '5', '9', '6', 'C'),
(34, 4, '¿Cómo se llama en golf cuando completas un hoyo en un lanzamiento menos que el par del hoyo?', 'Albatros', 'Birdie', 'Eagle', 'B'),
(35, 4, 'Las tres modalidades de la esgrima son: sable, espada y ...', 'Estoque', 'Florete', 'Estilo lbre', 'B'),
(36, 4, '¿Cómo se llama en béisbol cuando un bateador golpea la bola y ésta sale del campo de juego, lo que le permite recorrer todas las bases con facilidad?', 'Strike', 'Hit', 'Home run', 'C'),
(37, 4, '¿A qué distancia está el punto de penalty de la portería en fútbol?', '7 metros', '11 metros', '12 metros', 'B'),
(38, 4, 'Completa esta frase de baloncesto: &quot;El arbitro pitó _____ segundos en la zona y el equipo local perdió el balón&quot;', 'Cinco', 'Venticuatro', 'Tres', 'C'),
(39, 4, 'Si hablamos del jugador boya, estamos hablando de...', 'Boleibol', 'Hockey sobre patines', 'Waterpolo', 'C'),
(40, 4, '¿Cómo se llama en rugby la lucha frente a frente de dos grupos de jugadores de los dos equipos que empujan para obtener el balón sin tocarlo con la mano?', 'Placaje', 'Melé', 'Ensayo', 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Laboral'),
(2, 'Privado o civil'),
(3, 'Públicos o Administrativos'),
(4, 'Comerciales o Mercantiles');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
