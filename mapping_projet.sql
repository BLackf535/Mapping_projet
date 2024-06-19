-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 19 juin 2024 à 11:25
-- Version du serveur : 8.0.37-0ubuntu0.22.04.3
-- Version de PHP : 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mapping_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idclient` int NOT NULL,
  `contact` varchar(255) NOT NULL,
  `liensite` text NOT NULL,
  `nomstructure` varchar(255) NOT NULL,
  `idsv` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  `ville` varchar(255) NOT NULL,
  `datecreation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `contact`, `liensite`, `nomstructure`, `idsv`, `email`, `longitude`, `latitude`, `ville`, `datecreation`) VALUES
(1, '+33 1 10 74 49 85', 'http://martineau.com/quibusdam-ut-alias-ut-fuga-aut-tempora.html', 'Hernandez', 6, 'ruiz.zacharie@ifrance.com', 9.05898, 11.4841, 'Joly', '1983-02-13'),
(2, '+33 9 95 12 24 54', 'http://rodriguez.fr/voluptatum-aut-inventore-voluptas-minima.html', 'Maury Delannoy S.A.S.', 8, 'wdeoliveira@grenier.fr', 123.941, 39.7261, 'Vidal-sur-Barre', '1986-07-26'),
(3, '+33 1 90 24 32 11', 'http://www.gillet.com/eligendi-ex-ratione-commodi-ut-eum-placeat', 'Adam', 1, 'irenault@boyer.net', -4.92458, 12.0437, 'LeconteBourg', '2007-05-11'),
(4, '+33 9 07 28 53 60', 'https://aubert.org/omnis-aut-dolores-autem-id-dolor-laborum-aut.html', 'Blin', 10, 'philippine11@chauveau.org', 134.164, -58.278, 'Vallet', '1976-11-23'),
(5, '0893487371', 'http://noel.fr/', 'Picard S.A.', 9, 'duhamel.timothee@vidal.net', -9.86895, -89.6807, 'Le GoffVille', '2002-11-14'),
(6, '+33 (0)3 79 80 72 04', 'http://www.pasquier.fr/quaerat-minima-dicta-aliquid-aut-consequatur', 'Morel Delahaye SARL', 10, 'anouk.carpentier@gmail.com', 108.984, -43.1445, 'Morel', '1977-07-01'),
(7, '+33 7 71 87 48 06', 'http://benard.fr/quod-error-voluptatem-mollitia-dolores', 'De Oliveira', 4, 'pottier.juliette@gmail.com', 160.702, 84.476, 'Bourdon-sur-Letellier', '2008-08-17'),
(8, '+33 (0)6 52 31 82 62', 'http://www.martin.com/repudiandae-quia-consequatur-laboriosam-distinctio-rem', 'Martel Navarro S.A.S.', 9, 'bernard.herve@besnard.com', 100.34, -28.8336, 'Blot', '2005-07-30'),
(9, '01 92 96 04 05', 'http://roche.org/', 'Fournier Berger S.A.R.L.', 8, 'wgiraud@munoz.org', 11.4983, -21.5193, 'Daniel', '1983-11-29'),
(10, '03 18 66 49 86', 'https://huet.net/officiis-perspiciatis-vel-qui-tenetur-veniam-ipsum.html', 'Barre S.A.S.', 10, 'klaporte@begue.net', 84.1433, 13.9413, 'Guillotboeuf', '2001-11-06'),
(11, '0123740360', 'http://www.vallet.com/non-enim-sit-placeat-optio-animi.html', 'Mahe', 6, 'claudine.pruvost@mace.com', 4.66182, -45.6862, 'Maury', '1970-12-09'),
(12, '01 70 76 65 74', 'http://www.boulay.fr/perspiciatis-eos-itaque-dignissimos-est-iste-ex-ut-exercitationem', 'Fleury Etienne SA', 9, 'oraymond@club-internet.fr', 49.325, 89.1289, 'RenaudBourg', '2008-03-24'),
(13, '0981766392', 'http://www.pasquier.net/aspernatur-laboriosam-laudantium-aut-quis-autem-corrupti.html', 'Pinto', 6, 'maryse.perrot@perrot.org', 121.881, -22.4329, 'Texier', '2011-12-22'),
(14, '+33 1 17 20 52 10', 'http://duhamel.com/dolores-dignissimos-quas-cumque-laudantium-ut-perspiciatis.html', 'Masson S.A.', 5, 'zraymond@marchal.com', -3.63058, 41.6447, 'Petit', '1976-02-13'),
(15, '+33 9 99 26 10 34', 'http://www.etienne.fr/in-et-est-sunt-similique-dicta-repellat-beatae', 'Thomas', 7, 'leon.legros@roche.org', 89.6389, -10.4153, 'Roux', '2003-01-22'),
(16, '+33 6 54 07 88 85', 'http://desousa.com/quae-laboriosam-accusamus-est-quam', 'Philippe', 7, 'susanne49@sfr.fr', -176.55, 74.0521, 'Gerard', '2018-07-22'),
(17, '+33 (0)3 15 56 11 83', 'https://www.carre.net/aspernatur-ut-voluptatem-inventore-voluptatem', 'Navarro S.A.S.', 9, 'qdelannoy@hotmail.fr', -17.0189, 86.5557, 'Costa', '2017-05-01'),
(18, '02 26 26 66 21', 'http://blanchet.com/atque-consequatur-earum-aut-recusandae-officiis-at.html', 'Riou', 3, 'ovallee@wanadoo.fr', -104.274, -54.2159, 'Da Silva-sur-Hernandez', '2008-09-04'),
(19, '+33 (0)1 50 64 30 93', 'http://mercier.fr/et-libero-quia-provident-alias-vero.html', 'Goncalves', 3, 'ines62@free.fr', -16.1804, 68.1646, 'Barthelemy', '2015-01-02'),
(20, '+33 4 36 84 21 98', 'http://guillou.net/laborum-est-facilis-eum', 'Pasquier', 6, 'leroy.eric@yahoo.fr', 81.9924, -80.0135, 'Augerboeuf', '1987-10-21'),
(21, '02 18 17 60 40', 'http://picard.net/molestiae-est-et-qui-est-vel', 'Tessier', 9, 'faubry@perez.org', -75.3765, 88.361, 'Ribeiro-sur-Peron', '1996-01-27'),
(22, '0402001915', 'http://salmon.com/autem-modi-velit-labore-ea-aut.html', 'Gimenez', 4, 'jean79@tele2.fr', 161.25, 47.8154, 'Ruiz', '1996-11-05'),
(23, '0750907008', 'http://tanguy.fr/porro-veniam-omnis-nihil-et-ut-labore', 'Bourgeois', 6, 'grenault@tiscali.fr', -90.8492, -23.2839, 'Torres', '1976-08-21'),
(24, '+33 2 98 63 32 53', 'http://brunet.com/sequi-cupiditate-et-harum-pariatur.html', 'Guillet Legendre S.A.S.', 9, 'xavier.humbert@boucher.fr', 119.072, 42.0536, 'Mathieu-les-Bains', '1999-06-03'),
(25, '+33 (0)7 76 54 60 83', 'http://leger.fr/', 'Bodin', 7, 'tristan.cordier@regnier.com', 22.5082, -71.0414, 'Guillou', '2020-04-20'),
(26, '+33 (0)8 04 57 28 16', 'http://ruiz.com/quas-necessitatibus-aut-nihil-ut-officiis.html', 'Dupont S.A.R.L.', 10, 'dupuis.christophe@clement.fr', 150.221, 3.98474, 'Bourgeois', '1974-08-09'),
(27, '07 85 23 90 68', 'http://loiseau.net/omnis-neque-laudantium-temporibus-nemo-ab-dolores', 'Poirier Antoine S.A.', 5, 'sebastien99@guibert.fr', -172.789, -83.4036, 'Bouchetdan', '2013-09-08'),
(28, '+33 5 82 05 05 61', 'http://lelievre.org/omnis-aut-inventore-deserunt-molestias', 'Bodin S.A.R.L.', 4, 'suzanne.georges@hotmail.fr', 132.659, 10.3029, 'Aubert-sur-Mer', '2019-06-04'),
(29, '+33 9 80 23 98 47', 'http://www.reynaud.com/unde-nesciunt-et-cum-dolores-soluta-dolor-porro', 'Lucas Joseph S.A.R.L.', 8, 'rocher.francois@marchal.com', 21.2646, 10.8819, 'Renard', '1980-06-14'),
(30, '+33 (0)6 96 11 31 64', 'http://guillet.fr/ducimus-error-voluptatem-eos-corporis-accusamus-vel', 'Vincent SA', 10, 'plaine@laposte.net', -26.0891, -49.5633, 'Huet', '2010-11-10'),
(31, '+33 (0)1 41 47 38 74', 'https://www.guibert.org/culpa-est-quas-fugiat-dolor-voluptas-eum-commodi', 'Mallet Boucher SA', 7, 'nicolas.maurice@hotmail.fr', 164.171, -36.1189, 'Guyot-sur-Vallet', '2011-10-03'),
(32, '0657638112', 'http://www.laroche.com/', 'Laporte Jacques S.A.S.', 10, 'eugene15@laposte.net', -1.52235, -84.8103, 'Blanchard', '1982-05-06'),
(33, '+33 6 10 37 18 32', 'http://nicolas.com/nulla-ut-perferendis-dolores-aut-error-ipsa-sit-deserunt', 'Evrard Muller S.A.S.', 5, 'ltraore@yahoo.fr', 159.278, 76.5497, 'Pelletier', '2009-02-20'),
(34, '+33 1 94 35 11 33', 'http://moreau.net/perferendis-quia-natus-dolorem-similique-deleniti-natus-illo-tempora', 'Hardy Didier SAS', 7, 'yfischer@ifrance.com', 158.244, -30.0609, 'Hubert-sur-Mer', '2019-02-16'),
(35, '+33 1 56 29 00 69', 'http://www.petitjean.com/ut-et-magnam-eos-vero-natus.html', 'Olivier', 3, 'drichard@mace.org', -161.295, -9.38973, 'Reynaud-sur-Mer', '2020-04-19'),
(36, '+33 8 91 70 17 59', 'http://www.vasseur.org/officia-fugiat-illo-distinctio-reprehenderit-nemo.html', 'Nguyen S.A.', 1, 'alix.lebon@barbe.com', -163.281, 56.8087, 'Lesage-sur-Mer', '1999-07-15'),
(37, '0398861360', 'http://fouquet.com/quis-odit-alias-consequuntur-quisquam-possimus-rerum.html', 'Diallo', 4, 'guillou.arnaude@lecomte.com', -71.8597, 27.6045, 'Collet', '2017-07-29'),
(38, '+33 (0)5 43 61 52 90', 'https://www.lambert.fr/accusamus-modi-quia-laboriosam-vitae-cupiditate', 'Maillot', 6, 'jbaudry@weber.com', -12.7772, -56.0561, 'Daniel', '1993-08-03'),
(39, '+33 (0)6 25 09 21 33', 'http://www.pelletier.com/enim-illum-deleniti-aut-maxime-eos-minus-quis', 'Dias Henry S.A.S.', 6, 'clerc.theophile@maurice.com', -145.71, -49.4946, 'FernandesBourg', '1994-08-31'),
(40, '+33 1 33 65 53 39', 'http://petit.fr/in-et-deleniti-asperiores-dolorum', 'Gregoire', 3, 'stephane95@ifrance.com', 70.4679, -51.198, 'Gros', '1988-01-20'),
(41, '0959631975', 'http://www.bernier.net/sint-vero-sed-quaerat-porro-occaecati-eaque-accusantium.html', 'Texier SAS', 7, 'maurice.michel@dbmail.com', -169.439, -22.5304, 'Joubert', '2015-01-23'),
(42, '+33 5 36 69 70 53', 'http://bigot.fr/', 'Leconte S.A.S.', 8, 'yves.raymond@sfr.fr', 8.04512, -29.9757, 'Faure-sur-Mer', '2023-11-24'),
(43, '+33 (0)4 95 18 93 15', 'https://www.philippe.fr/non-consectetur-suscipit-nisi-amet', 'Roche', 2, 'ymarechal@marques.com', 5.84196, -56.7106, 'Labbe', '1982-01-04'),
(44, '01 34 63 84 23', 'http://thierry.fr/nostrum-sed-facilis-iste-iusto-cumque', 'Guillon Dumas SAS', 5, 'agomes@laposte.net', 81.8843, 79.6839, 'Menard', '2019-09-20'),
(45, '0756540481', 'http://www.marques.com/eaque-numquam-non-cupiditate-consequatur-voluptatibus-dolores.html', 'Klein', 8, 'edouard12@gmail.com', -46.128, 55.8849, 'Delahaye', '1990-09-20'),
(46, '09 85 27 54 28', 'http://gilbert.fr/illum-vitae-ut-id-nostrum-ipsa-aut-voluptate', 'Denis SA', 4, 'alain.pasquier@boyer.fr', 27.3382, -47.0434, 'Humbertnec', '1995-04-03'),
(47, '0132901011', 'http://gilles.net/labore-omnis-illo-ut-praesentium-doloribus-et-velit', 'Roussel', 7, 'dacosta.xavier@simon.fr', 26.3647, 3.60929, 'VerdierBourg', '2004-09-06'),
(48, '0456319798', 'http://roy.net/eius-quia-non-ut-nemo-amet', 'Bertin', 1, 'dupuy.adrien@orange.fr', 107.033, -44.78, 'Rey', '1975-05-16'),
(49, '+33 5 43 90 15 87', 'https://www.lemonnier.com/nesciunt-occaecati-veritatis-quasi-quam-error-et', 'Jean Rey SA', 6, 'tbonnin@yahoo.fr', -70.2667, 83.1945, 'Guibert', '1985-09-14'),
(50, '+33 (0)8 97 80 06 52', 'http://www.francois.fr/minima-rerum-incidunt-alias.html', 'Robert', 2, 'coste.andre@deoliveira.fr', 88.5034, -21.8586, 'Pelletierdan', '1982-03-13');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `idsv` int NOT NULL,
  `nom_service` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`idsv`, `nom_service`) VALUES
(1, 'station'),
(2, 'hotel'),
(3, 'restaurant'),
(4, 'cinema'),
(5, 'chute d\'eau'),
(6, 'ecole'),
(7, 'formation'),
(8, 'cybercafé'),
(9, 'laverie'),
(10, 'autre');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idclient`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsv` (`idsv`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`idsv`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `idclient` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `idsv` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`idsv`) REFERENCES `service` (`idsv`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
