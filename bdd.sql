-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Version du serveur : 10.11.8-MariaDB-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `aviation`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(3) NOT NULL,
  `titre` varchar(40) NOT NULL,
  `accroche` varchar(200) NOT NULL,
  `contenu` text NOT NULL,
  `publication` timestamp NOT NULL DEFAULT current_timestamp(),
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `accroche`, `contenu`, `publication`, `image`) VALUES
(3, 'Robin Dr400', 'Le Robin DR400 est un avion de tourisme monomoteur très utilisé dans les aéroclubs.', 'Il est apparu en 1972 par évolution de la gamme des DR300 (DR sont les initiales de Jean Délémontez et Pierre Robin). Par rapport à ces derniers, les deux différences majeures sont une cabine plus large aux épaules et une verrière qui coulisse vers l\'avant au lieu de portes, nouveau concept appliqué en premier lieu sur le HR-1 en 19691. La cambrure de l\'aile rend le pilotage plus facile et un meilleur décrochage. La planche de bord est plus haute et plus claire. \r\nOn retrouve d\'ailleurs les mêmes puissances disponibles à peu près, les différents modèles variant surtout par la motorisation, la cabine étant identique. Les modèles peu puissants, jusqu\'au 120 ch, sont dits « 2+2 », c\'est-à-dire pour deux adultes et deux enfants (ou trois adultes), les autres sont tous quadriplaces, le 180 ch emmenant sans problème 4 passagers, le plein d\'essence et quelques bagages. ', '2021-04-16 11:05:41', 'robin_dr400.jpg'),
(4, 'Piper PA-28', 'Le PA-28 est un avion gris en métal, monomoteur à pistons, non pressurisé, à ailes basses, à train tricycle et muni d\'une seule porte du côté du copilote. Il a été décliné en plusieurs vers', 'Le PA-28 est un avion gris en métal, monomoteur à pistons, non pressurisé, à ailes basses, à train tricycle et muni d\'une seule porte du côté du copilote. Il a été décliné en plusieurs versions depuis 1960 : Cherokee, Warrior, Archer, Dakota, Arrow.<br />\r\n37788 PA-28 ont été construits, ce qui en fait le 4e avion le plus produit au monde.<br />\r\nLes Archer et Arrow (à train rentrant) sont toujours au catalogue.<br />\r\nIls sont équipés de série du glass cockpit Garmin G1000 et G500. ', '2021-04-19 22:32:09', 'piper_pa28.jpg'),
(5, 'Da40', 'Le premier nouveau DA40 NG livré dans les Caraïbes', 'Premier Aircraft Sales a récemment vendu et livré à l’école de pilotage UFLYVI – à St Thomas dans les îles Vierges américaines – son tout premier Diamond DA40 NG nouvelle génération, équipé d’un moteur Austro Engine au carburéacteur.\r\n\r\nEn pleine croissance, UFLYVI détient une flotte diversifiée. Diamond Aircraft fait valoir que le nouveau DA40 NG – avec son avionique de pointe, sa cote de sécurité élevée et son groupe motopropulseur efficace – sera l’avion le plus moderne de l’école.\r\n\r\n« L’avion sera utilisé dans nos installations de St Thomas, » a fait savoir Matthew Stewart, propriétaire et CFI, CFII, MEI d’UFLYVI LLC.\r\n\r\n« Nous avons récemment établi un partenariat avec un nouveau centre de services aéronautiques local (Standard Aviation), et nous avons l’intention de promouvoir la formation en vol la plus moderne et sécuritaire de notre région à travers nos réseaux respectifs. Le DA40 NG attirera à coup sûr de nouveaux étudiants à la recherche de la sécurité et du confort de cet avion. »\r\n\r\nM. Stewart a lancé UFLYVI en 2016 avec un Cessna 172. En 2017, les îles Vierges américaines ont été frappées par deux ouragans violents qui ont retardé la croissance de l’école. Au début de 2019, l’école a été incorporée et un Piper Warrior PA28-161 a été acheté. Le personnel compte maintenant un instructeur de vol à temps plein, et plusieurs étudiants sont inscrits à temps complet (et plusieurs autres à temps partiel).\r\n\r\n« Il est reconnu que les appareils de Diamond Aircraft volent efficacement dans divers climats. La cellule en composite du DA40 NG n’est pas sensible à la corrosion. Elle convient donc parfaitement au climat chaud et humide des Caraïbes, » a mentionné Scott McFadzean,\r\n\r\n« PDG de Diamond Aircraft Industries inc. Nous sommes impatients de voir voler ce nouvel appareil dans les îles Vierges américaines, et de voir grandir ce partenariat avec UFLYVI. »\r\n', '2021-05-25 15:13:49', 'diamond_da40.jpg'),
(7, 'Beechcraft Bonanza G36', 'Il est aussi réputé grâce à la technologie qui lui est intégré ainsi que le confort pour les touristes que vous aurez avec vous. Si vous voulez partir à', 'Il est aussi réputé grâce à la technologie qui lui est intégré ainsi que le confort pour les touristes que vous aurez avec vous. Si vous voulez partir à l’aventure, cet avion est fait pour vous !\r\nLorsque votre passager entrera dans votre Bonanza G36, il sera tout de suite étonné par le fait que l’intérieur soit particulièrement spacieux.\r\n\r\nVous pourrez par ailleurs configurer l’intérieur de votre avion de tourisme de quatre manières différentes. Certaines seront plus adaptées pour le confort de vos passagers, d’autres le seront plus si vous souhaitez transporter des charges plus lourdes.', '2022-10-01 15:20:23', 'beechcraft_bonanza.webp'),
(13, 'Cessna 172', 'Nous voici maintenant avec le Cessna version 172. \r\n\r\nCe monomoteur nous vient tout droit des États-Unis. On le considère comme étant un avion à voilure fixe et à ailes hautes. C’est un vieil a', 'Nous voici maintenant avec le Cessna version 172. <br />\r\n<br />\r\nCe monomoteur nous vient tout droit des États-Unis. On le considère comme étant un avion à voilure fixe et à ailes hautes. C’est un vieil avion qui a volé pour la première fois en 1955 ! De fait, on pourrait se dire que c’est un avion seulement historique mais détrompez-vous, il y a encore des milliers de modèles qui sont utilisés aujourd’hui.<br />\r\n<br />\r\nEn 2015, on comptait plus de 44 000 avions Cessna 172 construits pas Cessna Aircraft Company. C’est du jamais vu ! Certains disent même que c’est l’avion le plus réussi de l’histoire. En tous les cas, avec ce modèle d’avion léger, <br />\r\n<br />\r\nvous pourrez avoir avec vous 3 passagers avec qui vous pourrez leur faire profiter de la splendide vue à travers les vitres. Maintenant, voyons un de ses concurrents !<br />\r\n<br />\r\nEst-ce lui le meilleur avion de tourisme de l&#039;histoire ?', '2022-04-10 16:41:26', 'cessna_170.webp'),
(21, 'pitts', 'pitts', 'pitts', '2022-10-14 09:22:09', 'pitts.jpg'),
(28, 'Pilatus SB-5', 'La société Pilatus est fondée le 16 décembre 1939. En mars 1940 débute la construction des halles de production à Stans. En juin de la même année, 65 employés assemblent le C-35. La semaine d', 'La société Pilatus est fondée le 16 décembre 1939. En mars 1940 débute la construction des halles de production à Stans. En juin de la même année, 65 employés assemblent le C-35. La semaine de cinq jours est introduite, une première en Suisse centrale. En 1941, un projet d&#039;un avion d&#039;entrainement monoplace, le Pilatus P-1 (en), est approuvé puis abandonné. En 1942, la compagnie est officiellement inaugurée en présence du Général Guisan. En 1943, l&#039;avion d&#039;entraînement Pilatus P-2 est développé. Une caisse de pension est créée en 1952. En 1954 est construit un bureau d’administration technique. En 1956 est construite une seconde halle de montage. Développement du Pilatus P-3 en 1973. En 1993 Pilatus quitte les contrats de sous-traitances pour Jetstream et Eurocopter. En 1996, la société de vente Pilatus Business Aircraft Ltd est créée à Denver aux États-Unis et Pilatus Maintenance devient un département différent. En 1998 Pilatus vend sa filiale britannique Pilatus Britten-Norman. La barre des mille employés est franchie en 2001. Afin de s&#039;implanter sur le marché chinois, Pilatus Aircraft crée en 2013 la Pilatus Aircraft Industry (China) Co., Ltd à Chongqing. ', '2022-10-14 12:07:01', 'Pilatus_SB-5_Side.jpeg');

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(4) NOT NULL,
  `id_membre` int(3) NOT NULL,
  `id_article` int(3) NOT NULL,
  `commentaire` text NOT NULL,
  `publication` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_membre`, `id_article`, `commentaire`, `publication`) VALUES
(3, 3, 3, 'C\'est pas mal !', '2021-04-19 22:21:37'),
(4, 3, 4, '1er commentaire, Depuis ce formulaire je désirerais pouvoir modifier les entrées soit depuis cette page, soit par le biais d\'une autre page avec seulement le \"site\", \"l\'identifiant\" et le \"mot de passe\" a modifier dans la base de données.', '2021-04-19 22:40:25'),
(5, 3, 5, 'C\'est super, vivement les beaux jours !!!', '2021-04-25 15:15:22'),
(6, 1, 3, 'C\'est un superbe avion !', '2022-04-03 17:11:38'),
(9, 2, 5, 'Le plus beau de tous !', '2022-04-09 16:06:39'),
(39, 1, 5, 'Coucou', '2022-04-09 17:25:06'),
(40, 2, 5, 'cricri', '2022-04-09 17:26:05'),
(41, 3, 5, 'Salut cricri !', '2022-04-10 09:51:24'),
(42, 3, 5, 'Salut Ltech', '2022-04-10 09:52:39'),
(44, 3, 7, 'Quelle belle avion ...', '2022-04-19 16:10:44'),
(46, 1, 4, 'C\'est sur, il est génial grâce a son agilité ...', '2022-04-28 18:51:26'),
(48, 1, 4, 'Génial !<br />\r\nOui', '2022-04-28 18:57:14'),
(49, 1, 4, 'Vraiment génial', '2022-04-28 19:00:23'),
(50, 1, 4, 'Génial', '2022-04-28 19:25:07');

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `pseudo`, `email`, `password`) VALUES
(1, 'Philippe', 'psenechal71@gmail.com', '$2y$10$AB62X1BDsL45adQ2cvsieueEKQz6ziumPI.mnIO6JVjPurIeaKI/W'),
(2, 'Ltech', 'ltech@btssio.fr', '$2y$10$TQhlsPKtBjJ9VVi6Nh5dz.Ypi.IaJsTa5adW1KPeMR7Jkf46H5UB2'),
(3, 'Ftant', 'ftant@btssio.fr', '$2y$10$YFKYHEhBFlJq8OIAe/xXIek/5u5RKP4r/ZMgBBE5Kk2dXUSeHGD6O'),
(6, 'titi', 'titi@free.fr', '$2y$10$2bsLIskP1DOafl1jidA12eKhFu42807dKutg7xQgne3ovtVmy5MqS'),
(9, 'tata', 'tata@btssiojb.fr', '$2y$10$J.um8oiKjOUpjL/kv/iN..PmOBH5UH5tuE.t8ZOVY/PHelFmk60B.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`),
  ADD KEY `id_membre` (`id_membre`);

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`id_membre`) REFERENCES `membres` (`id`),
  ADD CONSTRAINT `commentaires_ibfk_3` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
