-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 15:09
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maisonneuve2095249`
--

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ville_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`id`, `name`, `adress`, `phone`, `email`, `birth_date`, `created_at`, `updated_at`, `ville_id`) VALUES
(1, 'Admin', 'Admin', '555-555-5555', 'admin@admin.ca', '2021-10-05', '2021-10-05 23:24:16', '2021-10-12 03:43:34', 1),
(2, 'Mr. Austyn Rempel III', '32226 Boyle RuePort Tristinfort, FL 85771-5989', '901.257.6261', 'arden79@willms.net', '1983-07-03', '2021-09-02 20:01:03', '2021-09-06 07:20:37', 10),
(3, 'Cristobal Fay I', '3147 Adrain Light\nShayleeberg, ID 84729-1941', '1-402-952-3742', 'bcruickshank@schulist.info', '1994-08-29', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(4, 'Florida Braun', '97794 Tristian Rest Apt. 724\nNorth Keith, SC 84658', '628-567-8743', 'aernser@terry.net', '2000-05-15', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(5, 'Arvilla Effertz', '9716 Ilene Tunnel\nWildermanfort, OR 54783-5996', '+1 (856) 559-5937', 'padberg.alicia@gmail.com', '2007-05-27', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 5),
(6, 'Desmond Rau Sr.', '32603 Madalyn Walks\nPricefurt, NV 99279-9613', '1-484-743-5380', 'deshawn72@yahoo.com', '1976-07-09', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(7, 'Samantha Harvey', '4596 Prudence Field Apt. 263\nLizaside, TN 03264', '+12564494817', 'jena27@yahoo.com', '1979-11-14', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(8, 'Lewis Torphy V', '336 Walter Lock Suite 736\nWillmston, TN 73184', '(260) 483-1654', 'garret.witting@hoeger.biz', '2013-12-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(9, 'German Turcotte', '966 Duncan Way\nNew Maxfurt, ID 39083', '+1-404-522-3578', 'meggie.watsica@yahoo.com', '1977-06-10', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(10, 'Alberta Legros', '531 Velva Manor\nPort Jarrodview, TX 59929', '+15169176629', 'tlockman@yahoo.com', '1988-01-24', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(11, 'Prof. Marcelle Hyatt II', '8200 Dooley Knoll Suite 204\nEast Melvinafurt, NC 34976-0497', '+1.954.456.4763', 'wgibson@hotmail.com', '1989-07-09', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(12, 'Lisbeth Salander', '1234 Kay VistaEast Amarahaven, OR 40836', '(514) 302-5427', 'cnienow@gmail.com', '1985-04-22', '2021-09-02 20:01:03', '2021-10-05 23:53:53', 10),
(13, 'Ross Hessel', '6128 Deon Lights Apt. 175\nWest Annabelland, SD 38803-0449', '409-625-4024', 'cfadel@hagenes.com', '1990-09-19', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(14, 'Carlos Leuschke MD', '7992 Reilly Street\nEast Jettiemouth, SC 06761', '1-229-401-9223', 'gvolkman@hotmail.com', '1971-10-07', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(15, 'Isobel Franecki', '98701 Antone Court\nLake Daytonberg, ID 46133', '+1 (479) 892-2534', 'fay.hope@gmail.com', '1971-10-18', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(16, 'Mrs. Shanna Beahan II', '282 Odessa Key Apt. 657\nWest Ike, AK 54588', '(754) 709-3118', 'salvador84@bosco.com', '2021-07-30', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(17, 'Elmore Quigley', '5849 Hilton Prairie\nEast Saraiberg, KS 82649-9493', '1-802-410-0944', 'meggie.lindgren@yahoo.com', '2020-06-17', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(18, 'Carmine Weissnat', '3354 Osinski Points\nGulgowskistad, FL 89593-3860', '+1 (539) 697-9591', 'johns.abbigail@gmail.com', '1989-11-14', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(19, 'Cleveland Erdman', '7187 Moore Stravenue Suite 808\nSmithchester, AZ 52030', '865-647-9293', 'phoebe.blick@yahoo.com', '1976-10-20', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 14),
(20, 'Joshua Conroy', '4017 Nikolaus Ridges\nNew Bertachester, NM 65231-9428', '+13475972015', 'homenick.curt@gmail.com', '1982-05-02', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 3),
(21, 'Catharine West Sr.', '4223 Nathan Place\nDarienville, MS 06096-5766', '347.435.5200', 'ebert.bulah@yahoo.com', '1999-10-07', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(22, 'Dr. Alford Leuschke DDS', '393 Carlotta Ports\nPort Haylee, MA 92274', '+1-360-208-8469', 'ojohns@white.com', '1987-12-18', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(23, 'Crawford Swift', '90473 White Shore Suite 416\nNicholasland, NC 22807-3425', '206.622.4004', 'rath.jacynthe@hotmail.com', '1972-04-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(24, 'Kaleigh Hirthe', '8909 Schmitt Lakes\nWest Murphybury, NE 65179', '+1-352-340-7067', 'oveum@hotmail.com', '1981-03-27', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(25, 'Stanford Huels V', '597 Darrick Stravenue Suite 103\nFeestfurt, OK 53456', '(954) 537-1716', 'leonor.labadie@yahoo.com', '2012-11-05', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(26, 'Precious O\'Reilly', '75495 Koss Orchard Suite 959\nDakotachester, MS 99236', '+1 (762) 474-2810', 'schroeder.orlando@beier.com', '2009-07-11', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(27, 'Concepcion Bruen II', '7998 Wolf Brooks Apt. 114\nPort Krystal, WV 45425', '(502) 790-4609', 'dominic.reichel@hotmail.com', '1977-10-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(28, 'Mrs. Maia Bailey', '706 Kaycee Walks\nNew Annamaeport, MA 18364', '+1-785-705-4083', 'seth98@gerlach.com', '2008-09-24', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(29, 'Miss Jade Hackett PhD', '7509 Steuber Course\nNorth Conrad, IA 92398', '(210) 381-9563', 'klocko.kian@hotmail.com', '2021-08-05', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 1),
(30, 'Blake Reilly', '877 Jaime Corners Suite 109\nWest Jesse, MN 99324-7698', '+19042834378', 'okeefe.geovanni@wilderman.biz', '2020-11-28', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 5),
(31, 'Ahmed Abbott', '42911 Hagenes Bypass Suite 962\nKeshawnshire, HI 17396', '802.565.9193', 'larkin.eunice@walker.com', '1995-07-10', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 3),
(32, 'Nathen Buckridge PhD', '820 Hagenes Shore\nRaynorshire, UT 29342', '+15869859352', 'qvandervort@yahoo.com', '2010-08-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(33, 'Yolanda Price IV', '9380 Leonor Garden Suite 239\nNorth Caroline, OK 29048', '941.342.6251', 'rath.reece@huel.com', '1991-10-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(34, 'Wilfrid Bergnaum I', '132 Douglas Drives\nLennaland, ND 65134-7151', '1-678-599-5564', 'medhurst.lavada@hotmail.com', '1999-04-25', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(35, 'Tia Ferry II', '5481 Jason Street Apt. 100South Johanberg, MO 69444', '+1-831-955-2290', 'mortimer43@stokes.com', '2018-05-08', '2021-09-02 20:01:03', '2021-09-06 07:37:42', 1),
(36, 'Dr. Conor Kuhn', '65193 Sibyl Trail Apt. 279\nKlingstad, NJ 48250', '+18035575711', 'ndaniel@gmail.com', '1988-08-21', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(37, 'Camren Stark', '12791 Simonis Highway Apt. 734\nRuntemouth, PA 84967', '(617) 904-9332', 'odessa.lind@kris.com', '1999-12-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(38, 'Lilyan Vandervort', '83828 Prohaska Terrace\nRolfsonside, MO 31025', '+17702433330', 'alford91@olson.biz', '2012-05-10', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 5),
(39, 'Kathlyn Quigley', '5968 Toy Cliff Suite 745\nNorth Lauriane, WV 84859-9207', '(520) 854-5978', 'josue.west@hotmail.com', '1986-06-06', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(40, 'Mr. Tommie Weber', '84665 Conner Wells\nNaderside, NC 79064', '+1.424.244.2812', 'reichert.russel@bayer.org', '2001-05-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 3),
(41, 'Emil Labadie', '54668 Vergie Well Apt. 072\nVeumchester, KY 93481', '+1 (680) 351-0787', 'amurphy@yahoo.com', '1980-11-01', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(42, 'Manuela Howell Sr.', '160 Haag Terrace\nLake Edwin, VT 90993-1553', '435.894.1551', 'rebeka62@carter.com', '2014-02-02', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 1),
(43, 'Mr. Conrad Turner DVM', '26234 Ward Green Apt. 004\nElmirashire, MD 59561', '231-333-2225', 'kirlin.alex@hotmail.com', '2020-08-22', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(44, 'Geraldine Morar', '682 Moises Islands\nEast Jermeyland, ND 52259', '+1 (231) 924-1505', 'kling.frederick@murphy.com', '2014-10-27', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(45, 'Mrs. Wanda Greenfelder', '7013 Hayes Junction Suite 392\nLake Napoleonhaven, MO 03614-2976', '(239) 488-5716', 'pbauch@gmail.com', '2011-10-26', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 5),
(46, 'Godfrey Rippin Sr.', '54067 Crona River\nRosalindtown, VT 26880-0288', '858-444-9064', 'ebert.deja@barton.com', '1992-03-06', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(47, 'Bailee Wehner I', '456 Goyette Freeway Apt. 504\nZelmabury, DC 71247-7279', '+1-929-449-1981', 'kiara00@hotmail.com', '1980-04-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(48, 'Mrs. Nicole Lockman', '267 Elyssa Forks\nWest Sharonport, OH 50042-7274', '518.274.2137', 'audrey80@gmail.com', '1987-07-19', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(49, 'Rosalind Cummings', '325 Demetris Groves Apt. 240\nIsabelleton, NM 71798', '1-207-302-0456', 'price.beahan@gmail.com', '1980-06-15', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(50, 'Salvatore Mills', '23967 Crist Turnpike\nStokesside, IA 98397', '813.740.6341', 'ansley65@ohara.com', '1990-08-08', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(51, 'Carli Carroll', '763 Wilderman Unions Apt. 987\nSouth Lexus, CT 87184-6301', '463.957.2780', 'verlie.crooks@ferry.com', '1976-07-31', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(52, 'Verlie Renner PhD', '7830 Domenica Ford\nSchmelerfurt, AL 37834', '1-726-942-5822', 'constance.romaguera@yahoo.com', '2001-11-14', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 14),
(53, 'Irving Considine', '16200 Baumbach Loaf\nElnaview, IA 11695', '+1-843-473-7957', 'zulauf.leo@yahoo.com', '1975-01-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(54, 'Dortha Fadel', '1056 Treutel Road\nLake Wilhelmine, NC 18633', '+1 (559) 501-3324', 'vfranecki@sipes.com', '2020-04-30', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 11),
(55, 'Kaden Howell', '561 Carroll Drives\nRobertabury, VA 46384-0674', '+1 (320) 558-4658', 'daphney94@hotmail.com', '1970-05-10', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(56, 'Rossie Schoen', '50783 Gerlach Pike\nGerlachview, OK 97890-0299', '551.535.4488', 'braxton.leuschke@yahoo.com', '2020-07-05', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(57, 'Claudia McKenzie', '315 Weber Knolls\nSouth Jeanneton, TX 63356', '1-626-355-1492', 'damore.gabriel@hotmail.com', '1978-04-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(58, 'Nikko Stroman', '5094 Regan Stream Suite 967\nTylerborough, OH 31968-9078', '1-757-421-8261', 'hegmann.elnora@yahoo.com', '2020-04-11', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(59, 'Glenna Batz', '834 Lois Ports Apt. 340\nLondonstad, NY 85491-7329', '858-595-7855', 'eschowalter@gulgowski.com', '1976-05-07', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(60, 'Maximilian Tremblay', '4826 Alec Crossing Apt. 275\nNew Bethel, MI 02439-9531', '520-591-4531', 'iboehm@purdy.com', '2012-01-16', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(61, 'Flavio Metz PhD', '8098 Alberta Dale Suite 010\nSouth Eunicemouth, CT 57815-9147', '(401) 691-8543', 'eleanora32@zboncak.com', '2013-08-01', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(62, 'Evert Morar', '920 Bauch Green Apt. 315\nWest Salvatore, AL 07064-7713', '+1.934.545.5414', 'shanna64@lynch.net', '2012-07-04', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 12),
(63, 'Reina Kunze', '466 Lola Green Apt. 331\nEast Willardhaven, KS 42761', '1-304-867-1852', 'harvey.kristian@hoppe.com', '2016-08-17', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(64, 'Onie Schulist', '314 Marks Radial\nLake Adelebury, TX 55751', '+1.478.388.3677', 'jadams@yahoo.com', '2004-02-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(65, 'Maynard Harris', '153 Devyn Square Suite 986\nZackberg, CT 52593', '(863) 372-9433', 'leonora.becker@gmail.com', '2004-04-02', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(66, 'Juliana Carroll', '8710 Hoeger Cove\nWest Wyatt, AZ 60910-6655', '1-206-372-7531', 'jhoppe@hotmail.com', '2002-02-25', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(67, 'Frederique Gaylord II', '130 Antoinette Key\nNew Roberto, AK 16486-6127', '+1-419-750-1994', 'sven33@hotmail.com', '1988-06-02', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(68, 'Alanna King', '7369 Sherwood Radial Suite 526\nHowellfort, VA 16831-3160', '+1.567.437.3772', 'nadia.schulist@satterfield.com', '1981-10-15', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 7),
(69, 'Wilburn McKenzie', '294 Alana Neck\nWest Lillytown, UT 17077-3111', '(909) 314-9375', 'marion.shanahan@reilly.biz', '2011-06-17', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(70, 'Antone Kutch Sr.', '39601 Ottis Plains Apt. 953\nIlafort, VA 25977-6867', '(985) 346-7249', 'justina09@gmail.com', '1974-11-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 11),
(71, 'Lesly Daugherty', '627 Abbie Terrace\nPort Blanca, MI 78037-4905', '(318) 684-3295', 'zcormier@hotmail.com', '2016-02-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(72, 'Josie Bergnaum', '7692 Cecelia Spurs Suite 178\nWest Maximillia, OK 05012', '+1-520-430-4233', 'anya47@hotmail.com', '1980-09-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 1),
(73, 'Lillian Maggio', '154 Hobart Ville Apt. 941\nPort Genevievefort, DE 56752-8934', '+13648217113', 'purdy.korey@hotmail.com', '1973-08-21', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(74, 'Dr. Jacques Kirlin I', '9837 Rene Branch Suite 462\nWest Alfredo, WV 93286-8566', '(254) 647-4225', 'maiya.torp@hodkiewicz.org', '2012-05-16', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(75, 'Alexys Walsh', '3403 Cicero Trafficway Apt. 424\nNew Rigobertoland, NH 74784', '(364) 226-6735', 'nils.rogahn@hotmail.com', '1973-01-26', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(76, 'Prof. Lurline Williamson III', '747 Dylan Ridges Suite 644\nWest Lavinia, VA 96766', '+1-252-609-2473', 'cheyanne.wisozk@gmail.com', '2017-09-13', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(77, 'Aylin Nikolaus', '877 Brown Radial\nPort Nikolas, MS 25811', '870.681.6072', 'ngraham@gusikowski.info', '2003-10-25', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(78, 'Sherwood Bins', '94596 Effertz Drive\nNew Christiana, IN 84868', '(810) 507-0696', 'ottilie62@hotmail.com', '1982-08-12', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(79, 'Jazmyne Johns', '8266 Malachi Junctions\nEast Vivien, DE 89198-3571', '+1-781-425-9950', 'aglae93@green.com', '1981-07-22', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(80, 'Prof. Eusebio Stark DVM', '9644 Lydia Ferry\nWest Orvilletown, MN 36511-9634', '1-689-898-1169', 'hildegard.balistreri@stroman.com', '2004-03-27', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 3),
(81, 'Wiley Wolff', '353 Ronaldo Forks\nMarquisebury, NM 64190', '(564) 577-9123', 'lois.goyette@gmail.com', '1994-07-31', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(82, 'Dr. Cora Stehr V', '347 Stark Valleys\nLake Kyla, ME 08940', '762.682.9681', 'rcummerata@haag.com', '1993-05-22', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(83, 'Dr. Chaim Pfeffer', '914 Terry Fort Apt. 556\nPort Ronnystad, CO 21076-6934', '830.716.4589', 'purdy.ayana@gmail.com', '2009-03-24', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(84, 'Mitchell Ratke', '133 Runte Route\nRafaelaborough, AL 45587', '+1.972.884.6380', 'aiden04@zboncak.com', '1977-03-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(85, 'Virginia Langosh', '225 Swift Harbors\nSouth Micheleville, MS 41731', '+1.914.232.4849', 'treutel.abdiel@graham.com', '1976-03-01', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(86, 'Leonel Zulauf', '7402 Wilma Garden Apt. 298\nKeshawnville, CO 70297-3226', '(475) 908-0390', 'durgan.roosevelt@wintheiser.com', '1975-02-09', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(87, 'Dr. Virginia Bechtelar', '540 Llewellyn Estates Suite 084\nJadestad, HI 47313-3561', '+1 (317) 537-3209', 'crystel.braun@hotmail.com', '2021-08-28', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 10),
(88, 'Angelina Friesen I', '195 Braxton Expressway Apt. 711\nNew Amani, MD 94900-7788', '+1-785-652-8633', 'graham.bert@howell.com', '1976-02-19', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(89, 'Alessandra Christiansen', '825 Miller Route Apt. 471\nSouth Edd, WY 34291-5340', '+15018561299', 'aileen45@gmail.com', '2019-10-22', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 9),
(90, 'Janiya McDermott', '6269 Alvena Stream Apt. 146\nLuettgenhaven, OK 83451-8653', '520.910.8240', 'rahul.yundt@kulas.com', '1999-10-16', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 2),
(91, 'Thalia Beatty PhD', '319 Ethyl Manors\nKuhlmanstad, OR 85046', '1-702-364-2862', 'nschimmel@batz.com', '2021-07-11', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(92, 'Anabel Flatley', '65346 Nitzsche Junction\nSouth Bria, IN 69240', '(951) 345-5017', 'gus34@klocko.com', '2012-01-06', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(93, 'Adelle Abbott', '28930 Sister Islands Apt. 846\nWelchmouth, CT 70890-5132', '319.404.2252', 'emilio.olson@hotmail.com', '2013-02-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 6),
(94, 'Miss Katelyn Brakus', '778 Witting Points Suite 540\nWest Corbinmouth, WV 66577', '+1 (512) 602-5827', 'matilde72@terry.com', '1970-06-12', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 4),
(95, 'Corine Donnelly Sr.', '69369 Jacobson Islands\nLake Eliza, ID 12737-6497', '+1-747-724-6116', 'khaag@cremin.org', '1992-12-03', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 14),
(96, 'Mr. Jerrod McGlynn Jr.', '4163 Mraz Springs Apt. 150\nNew Pat, OR 77568', '971.616.9328', 'hammes.brooklyn@koch.net', '1992-03-23', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 1),
(97, 'Bradford Mayert', '807 Davis Park\nHudsonburgh, GA 38983', '814.500.8700', 'terrence.schmeler@lubowitz.com', '2002-04-15', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 14),
(98, 'Prof. Demarcus Fisher', '258 Sammy Drives\nSouth Katharinachester, SC 44658-4843', '(423) 688-8687', 'cathrine.trantow@gmail.com', '1987-07-11', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(99, 'Brendon Ebert Sr.', '95436 Florencio Run Apt. 593\nPort Evalynton, MD 17452', '781.497.0818', 'neva85@robel.biz', '2017-03-09', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 8),
(100, 'Joanie Johns', '569 Mraz Lodge Suite 936\nBeattyburgh, MO 83071-2343', '(406) 945-0861', 'ratke.buddy@yahoo.com', '2005-08-24', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 15),
(101, 'Clay Lynch', '49149 Maggio Walk Suite 446\nNorth Theodoraview, ND 85958', '+1 (814) 788-8615', 'giles98@wilkinson.info', '1976-11-26', '2021-09-02 20:01:03', '2021-09-02 20:01:03', 13),
(115, 'toto', 'toto', '4387282024', 'toto@toto.ca', '2021-10-01', '2021-10-05 23:26:59', '2021-10-05 23:26:59', 12),
(116, 'Toto', '1 bis Toto street', '555-555-5555', 'toto@toto.ca', '2000-01-01', '2021-10-08 01:08:55', '2021-10-08 01:08:55', 15);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `file_shares`
--

CREATE TABLE `file_shares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_fr` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `file_shares`
--

INSERT INTO `file_shares` (`id`, `title`, `title_fr`, `url`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 'Informations personnelles', 'doc3 fr', 'public/1633915275Informations_personnelles.pdf', 1, '2021-10-11 05:21:15', '2021-10-11 05:21:15'),
(17, 'Informations personnelles', 'doc toto 1 fr', 'public/VQPe6oub1zHN31u35u1WqBWK2qPcGC9hr5qqDOqe.pdf', 1, '2021-10-11 05:30:42', '2021-10-11 05:30:42');

-- --------------------------------------------------------

--
-- Structure de la table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `title_fr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_fr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `forum_posts`
--

INSERT INTO `forum_posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `users_id`, `title_fr`, `body_fr`) VALUES
(2, 'Article de Lisbeth EN', 'En : Youhou voici mon premier article.\r Je sais pas quoi écrire donc voila quoi \r La fille qui rêvait d\'un bidon d\'essence et d\'une allumette', '2021-10-07 08:35:04', '2021-10-07 08:35:04', 12, 'Article de Lisbeth fr', 'Youhou voici mon premier article. fr'),
(4, 'Un nouvel article de l\'admin EN ', 'EN : Entrez le contenu de votre article ... yo bro', '2021-10-07 23:32:03', '2021-10-07 23:32:03', 1, 'Un nouvel article de l\'admin', 'Entrez le contenu de votre article ... yo bro fr'),
(5, 'english title article 1', 'English article 1', '2021-10-09 01:00:21', '2021-10-09 01:12:31', 1, NULL, NULL),
(6, 'En title A 2', 'EN Body A2', '2021-10-09 01:18:23', '2021-10-09 01:18:23', 1, 'FR titre A2', 'FR contenu A2');

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_02_153238_create_villes_table', 1),
(6, '2021_09_02_153255_create_etudiants_table', 1),
(7, '2021_10_09_023227_create_file_shares_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.ca', NULL, '$2y$10$TF1gxmWd8s5Gh528MYkki.QU/h2d0CETP2gC/tEkqNOBNPr.QF9De', NULL, '2021-10-05 23:32:54', '2021-10-05 23:32:54'),
(2, 'Mr. Austyn Rempel III', 'arden79@willms.net', NULL, '$2y$10$i3PgWUOP0xkwQG.sNTydteYbvPflZkPW7O0qxHUDPSzq1kmuEDkp2', NULL, '2021-10-08 00:43:48', '2021-10-08 00:43:48'),
(12, 'Lisbeth Salander', 'cnienow@gmail.com', NULL, '$2y$10$OXOBlW0xWgTm/T/rRt7m3u10om2NTpqPUQJq0luqdUzv0MMfLfkn6', NULL, '2021-10-05 22:19:26', '2021-10-05 22:19:26');

-- --------------------------------------------------------

--
-- Structure de la table `villes`
--

CREATE TABLE `villes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `villes`
--

INSERT INTO `villes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Olentown', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(2, 'Sawaynville', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(3, 'New Emersonstad', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(4, 'Ernserfurt', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(5, 'Kellenbury', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(6, 'Pagacmouth', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(7, 'Port Krystel', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(8, 'South Adaline', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(9, 'Jonestown', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(10, 'Franeckitown', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(11, 'Loweberg', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(12, 'New Eileenland', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(13, 'Kleinmouth', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(14, 'Sawaynville', '2021-09-02 19:42:51', '2021-09-02 19:42:51'),
(15, 'South Lee', '2021-09-02 19:42:51', '2021-09-02 19:42:51');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `etudiants_ville_id_foreign` (`ville_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `file_shares`
--
ALTER TABLE `file_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_shares_user_id_foreign` (`user_id`);

--
-- Index pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_forum_posts_users1_idx` (`users_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `fk_users_etudiants1_idx` (`id`);

--
-- Index pour la table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `etudiants`
--
ALTER TABLE `etudiants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `file_shares`
--
ALTER TABLE `file_shares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `villes`
--
ALTER TABLE `villes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD CONSTRAINT `etudiants_ville_id_foreign` FOREIGN KEY (`ville_id`) REFERENCES `villes` (`id`);

--
-- Contraintes pour la table `file_shares`
--
ALTER TABLE `file_shares`
  ADD CONSTRAINT `file_shares_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD CONSTRAINT `fk_forum_posts_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_etudiants1` FOREIGN KEY (`id`) REFERENCES `etudiants` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
