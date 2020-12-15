-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 14 déc. 2020 à 07:35
-- Version du serveur :  10.3.25-MariaDB-cll-lve
-- Version de PHP : 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hafidou_asafar`
--

-- --------------------------------------------------------

--
-- Structure de la table `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `paied_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `user_id`, `reference`, `created_at`, `updated_at`) VALUES
(29, 'Agadir', '148', 'aga', '2020-06-04 02:05:57', '2020-06-04 07:04:00'),
(30, 'marakech', '149', 'kech', '2020-06-04 07:04:18', '2020-06-04 07:04:18'),
(31, 'casablanca', '154', 'casa', '2020-06-04 07:04:36', '2020-06-04 07:04:36'),
(32, 'dakhla', '154', 'dakhla', '2020-06-04 07:04:55', '2020-06-04 07:04:55'),
(33, 'Fes', '154', 'Fes', '2020-06-04 08:20:55', '2020-06-04 08:20:55'),
(34, 'النواحي', '158', 'النواحي', '2020-06-04 22:51:13', '2020-06-04 22:51:13');

-- --------------------------------------------------------

--
-- Structure de la table `dailystock`
--

CREATE TABLE `dailystock` (
  `id` int(11) NOT NULL,
  `stockcity` varchar(255) NOT NULL,
  `productID` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `defaultcharges`
--

CREATE TABLE `defaultcharges` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `historyentree`
--

CREATE TABLE `historyentree` (
  `id` int(11) NOT NULL,
  `productID` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `valid` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historyentree`
--

INSERT INTO `historyentree` (`id`, `productID`, `quantity`, `valid`, `note`, `created_at`, `updated_at`) VALUES
(23, '28', '10', '10', 'ohklipjkml', '2020-06-20 23:51:47', '2020-06-20 23:51:47'),
(24, '28', '555', '150', 'sqcl', '2020-06-20 23:51:59', '2020-06-20 23:51:59'),
(25, NULL, NULL, '150', NULL, '2020-06-20 23:52:00', '2020-06-20 23:52:00'),
(26, '28', '52', '12', 'klkk', '2020-06-20 23:52:35', '2020-06-20 23:52:35'),
(27, '28', '10', '1', 'بىاتبلتيبءلتي', '2020-06-23 02:32:52', '2020-06-23 02:32:52'),
(28, '28', '64545454', '70000', 'يشسبشيسبلشيس', '2020-06-23 02:33:04', '2020-06-23 02:33:04');

-- --------------------------------------------------------

--
-- Structure de la table `historymoney`
--

CREATE TABLE `historymoney` (
  `date` varchar(255) NOT NULL,
  `ads` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historymoney`
--

INSERT INTO `historymoney` (`date`, `ads`, `created_at`, `updated_at`, `id`) VALUES
('2020-06-04', '200', '2020-06-04 03:31:17', NULL, 10);

-- --------------------------------------------------------

--
-- Structure de la table `lists`
--

CREATE TABLE `lists` (
  `id` int(11) NOT NULL,
  `source` varchar(255) NOT NULL,
  `DeliverID` varchar(255) NOT NULL,
  `mowadafaID` varchar(255) NOT NULL,
  `cityID` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `prix_de_laivraison` varchar(255) DEFAULT NULL,
  `cancel_reason` text NOT NULL,
  `statue` varchar(255) NOT NULL,
  `to_show_again` timestamp NULL DEFAULT NULL,
  `time_to_deliver` varchar(255) NOT NULL,
  `no_answer` varchar(255) NOT NULL,
  `no_answer_time` timestamp NULL DEFAULT NULL,
  `log` text NOT NULL,
  `active` varchar(255) NOT NULL,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `verified_at` timestamp NULL DEFAULT NULL,
  `delivred_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `canceled_at` timestamp NULL DEFAULT NULL,
  `duplicated_at` timestamp NULL DEFAULT NULL,
  `outzone_adress` varchar(255) NOT NULL,
  `check_note` text NOT NULL,
  `checked_at` timestamp NULL DEFAULT NULL,
  `horszoned_at` timestamp NULL DEFAULT NULL,
  `to_deliver_at` timestamp NULL DEFAULT NULL,
  `recall_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `history` text DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `suivi_tentative` varchar(255) DEFAULT NULL,
  `count_no_answer` varchar(255) DEFAULT NULL,
  `count_no_answer_employee` varchar(255) DEFAULT NULL,
  `stocked_at` timestamp NULL DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `lists`
--

INSERT INTO `lists` (`id`, `source`, `DeliverID`, `mowadafaID`, `cityID`, `name`, `adress`, `tel`, `note`, `prix_de_laivraison`, `cancel_reason`, `statue`, `to_show_again`, `time_to_deliver`, `no_answer`, `no_answer_time`, `log`, `active`, `accepted_at`, `verified_at`, `delivred_at`, `deleted_at`, `canceled_at`, `duplicated_at`, `outzone_adress`, `check_note`, `checked_at`, `horszoned_at`, `to_deliver_at`, `recall_at`, `created_at`, `updated_at`, `history`, `product`, `city`, `quantity`, `price`, `suivi_tentative`, `count_no_answer`, `count_no_answer_employee`, `stocked_at`, `color`, `size`) VALUES
(3, 'http://www.marocqualite.com', '', '10003', '', 'محمد لبيض', '7 زنقة مقهى الباشا تازة العليا ', '0636181497', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'تازة', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'http://www.marocqualite.com', '', '10003', '', 'محمد بن عبوا', 'المندوبية الإقليمية للصحة الرشيدية', '0668685720', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'الرشيدية', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'http://www.marocqualite.com', '', '10003', '', 'عبدالرحيم صفار', 'الدارالبيضاء  الآفة ', '0762709644', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'المغرب', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'http://www.marocqualite.com', '', '10003', '', 'Aziz ouahabi', 'زنقة2الدار13حي الأحباس ي م ص الرباط', '0639327535', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'الرباط', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'http://www.marocqualite.com', '', '10003', '', 'Abdelali', 'Rus Ahmad sabar', '0636261717', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'Casablanca', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'http://www.marocqualite.com', '', '10003', '', 'نوال الكامل', 'بيوكرى ', '0701157355', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'اشتوكة أيت باها', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'http://www.marocqualite.com', '', '10003', '', 'عبد رحيم الفتح ', 'حي لهناء  3 الزنقة 37 رقم 33', '0691470803', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'طنجة ', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'http://www.marocqualite.com', '', '10003', '', 'Zouhri Zakaria', 'Casa maarif ', '0601036561', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'Casa', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'http://www.marocqualite.com', '', '10003', '', 'Ayoub darir ', '  C.y.m Kamra sud bloque t 3 n 85', '0625362791', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'Rabat ', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'http://www.marocqualite.com', '', '10003', '', 'Taha alkabbab', 'Rue sultan abou elhassan imm elyaàcoubi app8 taza', '0678790804', '', NULL, '', '', NULL, '', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, '2020-10-16 08:28:06', '2020-10-16 08:28:06', NULL, '', 'Taza', '1', ' 249', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `multisale`
--

CREATE TABLE `multisale` (
  `id` int(11) NOT NULL,
  `listID` varchar(255) NOT NULL,
  `productID` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quanity` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `multisale`
--

INSERT INTO `multisale` (`id`, `listID`, `productID`, `price`, `quanity`, `created_at`, `updated_at`) VALUES
(1, '1', '40', '120', '10', '2020-10-15 14:21:08', '2020-10-15 14:21:08'),
(2, '1', '41', '120', '5', '2020-10-15 14:21:08', '2020-10-15 14:21:08'),
(3, '2', '22', '120', '2', '2020-10-15 14:25:13', '2020-10-15 14:25:13'),
(4, '3', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(5, '4', '43', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(6, '5', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(7, '6', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(8, '7', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(9, '8', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(10, '9', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(11, '10', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(12, '11', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06'),
(13, '12', '41', ' 249', '1', '2020-10-16 08:28:06', '2020-10-16 08:28:06');

-- --------------------------------------------------------

--
-- Structure de la table `new`
--

CREATE TABLE `new` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cityID` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `source` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `ProductReference` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `productID` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `duplicated_at` timestamp NULL DEFAULT NULL,
  `statue` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `new`
--

INSERT INTO `new` (`id`, `name`, `tel`, `adress`, `created_at`, `updated_at`, `cityID`, `city`, `note`, `source`, `quantity`, `ProductReference`, `price`, `productID`, `deleted_at`, `duplicated_at`, `statue`, `size`, `color`) VALUES
(191, 'atman', '0668222086', 'AGADIR', '2020-12-12 19:06:34', '2020-12-13 03:06:34', '', 'AGADIR', '', '', '', '', '', '393', NULL, NULL, 'لا يجيب', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `options`
--

CREATE TABLE `options` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(7, 'name', 'assafar', '2020-10-22 20:21:05', '2020-12-10 00:37:01'),
(8, 'tagline', 'مرحبا بكم في أحسن متجر الكتروني بالمغرب من ناحية جودة المنتجات يمكنكم الاتصال بنا ', '2020-10-22 20:24:02', '2020-11-08 20:23:41'),
(9, 'phone', '0771243197-0770561834', '2020-10-22 20:24:02', '2020-12-13 06:38:03'),
(10, 'email', 'assafarbio2020@gmail.com', '2020-10-22 20:24:02', '2020-12-10 00:41:06'),
(11, 'pixel', '<!-- Facebook Pixel Code -->\r\n<script>\r\n  !function(f,b,e,v,n,t,s)\r\n  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\n  n.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\n  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\n  n.queue=[];t=b.createElement(e);t.async=!0;\r\n  t.src=v;s=b.getElementsByTagName(e)[0];\r\n  s.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n  \'https://connect.facebook.net/en_US/fbevents.js\');\r\n  fbq(\'init\', \'1032276027237186\');\r\n  fbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\n  src=\"https://www.facebook.com/tr?id=1032276027237186&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', '2020-10-23 21:39:58', '2020-12-14 07:13:35'),
(12, 'stats', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-119550023-1\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-119550023-1\');\r\n</script>\r\n', '2020-10-23 21:39:58', '2020-10-28 12:45:52'),
(13, 'logo', 'mOciFU3z3pAHk2IuCZzL.png', '2020-10-25 16:32:04', '2020-11-21 20:04:11'),
(14, 'color', '#d1672e', '2020-10-28 12:14:57', '2020-11-08 20:22:45'),
(15, 'whatsapp', 'off', '2020-11-03 00:55:53', '2020-11-03 04:00:08'),
(16, 'whatsapp_number', '0771243197', '2020-11-03 01:01:32', '2020-12-12 06:50:22'),
(17, 'banner_footer', '1TpZcfu7y7eq80ZQvcYD.jpg', '2020-11-03 02:03:38', '2020-12-02 18:36:46'),
(18, 'footer_img', 'off', '2020-11-03 03:20:37', '2020-11-07 17:45:08'),
(19, 'fb_link', 'https://web.facebook.com/Assafarbio-102872914622876', '2020-11-03 04:00:08', '2020-12-14 07:12:25'),
(20, 'twitter_link', '#', '2020-11-03 04:00:08', '2020-11-23 16:01:45'),
(21, 'youtube_link', 'https://www.youtube.com/channel/UC3_aawK0yhGPvfUyd7eqLTA', '2020-11-03 04:00:08', '2020-12-14 07:43:39'),
(22, 'instagram_link', 'https://www.instagram.com/assafarbio1/', '2020-11-03 04:00:08', '2020-12-14 07:12:25'),
(23, 'contact_icon', 'off', '2020-11-03 04:26:40', '2020-11-21 20:04:11'),
(24, 'phone_number', '0771243197', '2020-11-03 04:26:40', '2020-12-12 06:50:22'),
(25, 'messenger_link', 'https://www.facebook.com/shopnowmaroc/inbox/?mailbox_id=106423867509021&selected_item_id=100049352197830', '2020-11-03 04:26:40', '2020-11-08 20:20:20');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `deliver_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`id`, `date`, `deliver_id`, `created_at`, `updated_at`, `money`) VALUES
(30, '2020-06-04', '154', '2020-06-04 18:33:24', NULL, '548'),
(29, '2020-06-04', '148', '2020-06-04 18:32:20', NULL, '498');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` text DEFAULT NULL,
  `stock` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `prix_jmla` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(500) DEFAULT NULL,
  `gallery` text DEFAULT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `categoryID` varchar(500) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `price_2` varchar(255) DEFAULT NULL,
  `show_home` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `slug`, `quantity`, `prix_jmla`, `reference`, `description`, `thumbnail`, `gallery`, `discount`, `created_at`, `updated_at`, `categoryID`, `size`, `color`, `price_2`, `show_home`) VALUES
(377, 'NIGELLE (الحبة السوداء)', '144', '', '', '', '', '', '<ul dir=\"ltr\">\r\n	<li><strong>Excellent compl&eacute;ment alimentaire, d&eacute;di&eacute; &agrave; l&#39;&eacute;quilibre interne.</strong></li>\r\n	<li><strong>Nombreuses&nbsp;propri&eacute;t&eacute;s curatives&nbsp;: digestive, diur&eacute;tique, stimulante, antioxydante, galactog&egrave;ne (elle active la s&eacute;cr&eacute;tion de lait chez les femmes qui allaitent), analg&eacute;sique et antiallergique.</strong></li>\r\n	<li><strong>Stimule le syst&egrave;me immunitaire, fait baisser le mauvais cholest&eacute;rol et pr&eacute;vient l&#39;hypertension art&eacute;rielle.</strong></li>\r\n	<li><strong>Une consommation r&eacute;guli&egrave;re de cumin noir peut r&eacute;duire le taux de sucre dans le sang et la r&eacute;sistance &agrave; l&#39;insuline, ce qui en fait un rem&egrave;de efficace pour &eacute;viter les diab&egrave;tes de type 2.</strong></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>مضادة للجراثيم والالتهابات</strong></h3>\r\n\r\n<h3><strong>خفض الكوليسترول- علاج التهاب الحلق-الوقاية من الأشعة-تعزيز الصحة العقلية-&nbsp;تعزيز صحة الشعر-الحفاظ على البشرة</strong></h3>\r\n', 'FoxhC7RhFnqIO1PAXJ8f.jpg', '[\"W9wcx6jeR8Rs4uSaaJyZ.jpg\",\"WdxcLGoWlynVKbTjg0Gz.jpg\",\"gC2hmsyKN6LHN7BEDSkz.jpg\"]', '85', '2020-12-13 23:26:57', '2020-12-14 07:26:57', '96', '', '', '', 'off'),
(378, 'PACK HEXAGONALE (التركيبة السداسية)', '198', '', '', '', '', '', '<p>&nbsp;</p>\r\n\r\n<p><strong>منتج السداسية المبهر والسحري المتكون من العكبر والجنسك والماكا ,طلع النخيل , حبوب اللقاح وأخيرا عسل نحل طبيعي وممزوج مع غذاء ملكة النحل المفيدة في علاج الامعاء التسممات والغازات المتراكمة وجرثومة المعدة وبومزوي او القولون العصبي صالحة للجهاز الهضمي&nbsp;&nbsp;</strong></p>\r\n', 'DK4IZpodHc8A9Ebtgcdi.jpg', '[\"zkSm8nbC0JF8F3zGtdbG.jpg\",\"OZkiJFPRn7X3jLrNDL6S.jpg\",\"G6K7lBIivs5fNcC2D4u5.jpg\"]', '117', '2020-12-13 23:29:06', '2020-12-14 07:29:06', '96', '', '', '', 'off'),
(379, 'COSTUS INDIEN (القسط الهندي)', '153', '', '', '', '', '', '<p><strong>Agit contre la sorcellerie</strong></p>\r\n\r\n<p><strong>Contre les faiblesses sexuelles</strong></p>\r\n\r\n<p><strong>Pour traiter la thrombose</strong></p>\r\n\r\n<p><strong>Faire dispara&icirc;tre la migraine</strong></p>\r\n\r\n<p><strong>Contre le cancer de la bouche</strong></p>\r\n\r\n<p><strong>Traite les maladies du rein</strong></p>\r\n\r\n<p><strong>Les maux li&eacute;s au foie</strong></p>\r\n\r\n<p><strong>Traiter efficacement l&#39;asthme</strong></p>\r\n\r\n<p><strong>Agir contre la tuberculose</strong></p>\r\n\r\n<p><strong>Traite les maladies urinaires</strong></p>\r\n\r\n<p><strong>Traite tout l&#39;appareil digestif</strong></p>\r\n\r\n<p><strong>R&eacute;gule le diab&egrave;te</strong></p>\r\n\r\n<p><strong>Renforce le syst&egrave;me immunitaire</strong></p>\r\n\r\n<p><strong>Elimine la pleur&eacute;sie</strong></p>\r\n\r\n<p><strong>Cicatrisation plus rapide</strong></p>\r\n\r\n<p><strong>Pour &eacute;liminer les vers</strong></p>\r\n\r\n<p><strong>Agir sur les maux de l&#39;ovaire</strong></p>\r\n\r\n<p><strong>Am&eacute;liore la circulation sanguine</strong></p>\r\n\r\n<p><strong>D&eacute;truit champignons/bact&eacute;ries</strong></p>\r\n\r\n<p><strong>Effacer les t&acirc;ches de rousseur</strong></p>\r\n', '1iGpQNT50ztO3S8Dehmh.jpg', '[\"jqbAX9dFc6gU8aIee4Qr.jpg\",\"mZgUTafe6A36uwDQNhKG.jpg\",\"C64Int81POHCFyhVmHBg.jpg\"]', '90', '2020-12-13 23:06:46', '2020-12-14 07:06:46', '96', '', '', '', 'on'),
(380, 'GINSENG (جنسينغ)', '233', '', '', '', '', '', '<p><strong>* Stimuler le syst&egrave;me immunitaire*Traiter la dysfonction &eacute;rectile, traiter le diab&egrave;te de type 2*Stimuler la m&eacute;moire, am&eacute;liorer la performance physique, promouvoir le bien-&ecirc;tre g&eacute;n&eacute;ral, soulager les sympt&ocirc;mes de la m&eacute;nopause, pr&eacute;venir et traiter le cancer</strong></p>\r\n', '7EBK7V9rzoWDOhoFrMeh.jpg', '[\"oo3CjFVNDMHjkp5f98hE.jpg\",\"Ivd4m0cwoPVOQ8ACIlYe.jpg\",\"SofVdBt1o7HkLmnHdJNs.jpg\"]', '137', '2020-12-13 23:21:45', '2020-12-14 07:21:45', '96', '', '', '', 'off'),
(381, 'EJACULATION PRECOCE (القدف السريع)', '321', '', '', '', '', '', '<p><strong>تتكون هذه التركيبة من عدة مكونات كالجنسنك والماكا وطلع النخيل، عصى علي، العكبر، بذور اللفت، بذور الجزر، بذور الفجل، بذور القرع، الحبة السوداء، حبوب اللقاح، مع منسمات كالشمر اليانسون وأيضا عسل النحل الطبيعي ممزوج مع غذاء ملكة النحل ، هذا المنتوج يساعد على علاج القذف السريع والضعف الجنسي ورفع المناعة والطاقة البدنية وفقر الدم.......&nbsp;&nbsp;</strong></p>\r\n', 'bcR1a1qCjorYX3HNCxUd.jpg', '[\"fHtGSuv6qUc1MmoUaZYG.jpg\",\"8Viz34XvXJy8wOz5vghJ.jpg\",\"H3ZHdAjoVjeJSgU7jkS4.jpg\"]', '189', '2020-12-13 23:24:09', '2020-12-14 07:24:09', '96', '', '', '', 'off'),
(382, 'GRAINES DE CITROUILLE (بذور اليقطين)', '140', '', '', '', '', '', '<p><br />\r\n<strong>*stimuler le syst&egrave;me immunitaire &nbsp;*forte teneur en magn&eacute;sium &nbsp; *riches en fer &nbsp; *soulagent les sympt&ocirc;mes de la vessie irritable et l&rsquo;hypertrophie b&eacute;nigne de la prostate *riches en fibres &nbsp;*baisser le niveau de &laquo;mauvais cholest&eacute;rol&raquo;. &nbsp;*anti-inflammatoire naturel</strong></p>\r\n', '7lNXo2RbNoka4lsQdqKV.jpg', '[\"viMH9WzqJJBJM2ANc5c0.jpg\",\"X3GthFhtTLB6evZodvks.jpg\",\"6ZftdKQPV6cDF79adpxj.jpg\"]', '85', '2020-12-13 23:10:52', '2020-12-14 07:10:52', '96', '', '', '', 'off'),
(383, 'POLLEN DE PALMIER (طلع النخيل)', '161', '', '', '', '', '', '<p><strong>Le pollen de palmier a des vertus bienfaisantes, il permet le nettoyage l&#39;ut&eacute;rus pendant et apr&egrave;s les r&egrave;gles et r&eacute;gularise le cycle. Il permet &eacute;galement d&#39;augmenter la production gonadique et de spermatozo&iuml;des, il augmente aussi l&#39;&eacute;paisseur de l&#39;endom&egrave;tre.</strong></p>\r\n', 'tibGzXkOsE3j8YD1kcZE.jpg', '[\"mJdilEzY8BRGE1vmaKh4.jpg\",\"QNoWew9mrU0R2lStCKM8.jpg\",\"nyWa4bo2EblB9iUHIsqY.jpg\"]', '95', '2020-12-13 23:08:15', '2020-12-14 07:08:15', '96', '', '', '', 'off'),
(384, 'SPIRULINE (سپيرولين)', '136', '', '', '', '', '', '<ul dir=\"ltr\">\r\n	<li><strong>Am&eacute;liore l&#39;endurance et la r&eacute;sistance. Tr&egrave;s appr&eacute;ci&eacute;e des sportifs, la spiruline apporte fer et b&ecirc;ta-carot&egrave;ne et favorise ainsi la bonne oxyg&eacute;nation du sang, des cellules et des muscles&nbsp;</strong>\r\n	<h2>&nbsp;</h2>\r\n\r\n	<p dir=\"rtl\"><strong>السبيرولينا هي عبارة عن نوع من أنواع الطحالب، لونها أخضر مائل للزرقة، وتنمو في الطبيعة في المحيطات والبحيرات المالحة في المناخات شبه الإستوائية.</strong></p>\r\n\r\n	<p dir=\"rtl\"><strong>تعتبر السبيرولينا اليوم من&nbsp;<a href=\"https://www.webteb.com/articles/%D8%A7%D9%84%D9%86%D8%B8%D8%A7%D9%85-%D8%A7%D9%84%D8%BA%D8%B0%D8%A7%D8%A6%D9%8A-%D8%A7%D9%84%D8%B5%D8%AD%D9%8A-%D9%88%D8%AD%D9%82%D9%8A%D9%82%D8%A9-%D8%A7%D9%84%D8%A7%D8%BA%D8%B0%D9%8A%D8%A9-%D8%A7%D9%84%D8%AE%D8%A7%D8%B1%D9%82%D8%A9_15344\">الأغذية الخارقة</a>&nbsp;لغناها بالأصباغ النباتية وقدرتها العالية على اداء عملية التمثيل الضوئي. كما أن منظمة الصحة العالمية أتاحت استخدامها كأصباغ غذائية طبيعية.</strong></p>\r\n\r\n	<h2><strong>فوائد سبيرولينا</strong></h2>\r\n\r\n	<p dir=\"rtl\"><strong>تتحلى السبيرولينا بمزايا عديدة جدا خولتها فعلا من التواجد على عرش الأغذية الخارقة وذات الفائدة:</strong></p>\r\n\r\n	<h3><strong>1. &nbsp;السبيرولينا غنية بالفيتامينات والمعادن</strong></h3>\r\n\r\n	<p dir=\"rtl\"><strong>تحتوي ملعقة واحدة من مسحوق السبيرولينا المجففة التي تعادل 7 غرامات تقريبا كمية هائلة من الفيتامينات والمعادن:</strong></p>\r\n	</li>\r\n	<li><strong><a href=\"https://www.webteb.com/articles/%D9%85%D8%A7-%D9%87%D9%8A-%D8%A7%D9%84%D8%A8%D8%B1%D9%88%D8%AA%D9%8A%D9%86%D8%A7%D8%AA-%D8%A7%D9%84%D8%A7%D9%81%D8%B6%D9%84-%D9%84%D9%84%D8%AC%D8%B3%D9%85_14546\">البروتين</a>:&nbsp;4 غرام.</strong></li>\r\n	<li><strong>فيتامين B1 (الثيامين):&nbsp;11 ٪ من حاجة الجسم اليومية.</strong></li>\r\n	<li><strong><a href=\"https://www.webteb.com/vitamins/%D9%81%D9%8A%D8%AA%D8%A7%D9%85%D9%8A%D9%86-%D8%A8-2\">فيتامين B2</a>&nbsp;(ريبوفلافين):&nbsp;15 ٪ من حاجة الجسم اليومية.</strong></li>\r\n	<li><strong>فيتامين B3 (النياسين): 4 ٪ من حاجة الجسم اليومية.</strong></li>\r\n</ul>\r\n', 'AWfcRRl6R7tECZl44xvV.jpg', '[\"xSePqEEpc3ZgXCqxdwa5.jpg\",\"kw0L5v4ScwpI16IDIrVi.jpg\",\"BfqcRmUZBQZa1XSpnLsJ.jpg\"]', '80', '2020-12-13 23:01:37', '2020-12-14 07:01:37', '96', '', '', '', 'off'),
(385, 'GINKGO BILOBA (جينكو بيلوبا)', '145', '', '', '', '', '', '<p><strong>Le ginkgo am&eacute;liore la circulation sanguine, qu&#39;elle soit art&eacute;rielle ou veineuse et agit comme antiagr&eacute;gant plaquettaire. Les extraits naturels de ginkgo peuvent ainsi &ecirc;tre utilis&eacute;s pour lutter contre les troubles circulatoires tels que les varices, les &oelig;d&egrave;mes des membres inf&eacute;rieurs ou la claudication intermittente.</strong></p>\r\n', 'zbqdehH18d0zIAcIMqra.jpg', '[\"nEf3sFo4XE1tkyuzzCbQ.jpg\",\"a2myX4dBVnIMZEBT5Ztw.jpg\",\"4UNe3VA8vSxFDRkiv7hg.jpg\"]', '85', '2020-12-13 23:14:15', '2020-12-14 07:14:15', '96', '', '', '', 'off'),
(388, 'GRAINES DE CHIA (حبوب الشيا)', '144', '', '', '', '', '', '<p><br />\r\n<strong>regorgent d&#39;antioxydants, qui combattent la production de radicaux libres et renforcent le syst&egrave;me immunitaire. De part leur teneur en fibres alimentaires, elles sont id&eacute;ales pour la digestion.</strong></p>\r\n', '9uc5EEQ7OsoM6tFZGEFc.jpg', '[\"6rEkyikOkodeEbvjBxUm.jpg\",\"3ONdHJIFi48cy7Ot0BPM.jpg\",\"cZU00xofZx0C5mTWY6y3.jpg\"]', '85', '2020-12-13 23:19:22', '2020-12-14 07:19:22', '96', '', '', '', 'off'),
(393, 'تركيبة كمال الأجسام', '1300', '', '', '', '', '', '<p><strong>تركيبة فريدة من نوعها غنية بالبروتين الطبيعي النباتي لتفادي البروتين الكيماوي لجسمك، تركيبة تحتوي على مكونات غنية بالطاقة كاللوز وعين الجمل والسمسم التمر الكاجو ،البندق، وكذلك منسمات كالشمر، اليانسون القرفة، ممزوجة بعسل النحل الطبيعي، تركيبة مفيدة لكمال الأجسام , تعطي للجسم طاقة وبروتينات تغنيه عن اللجوء للمواد الكيماوية الضارة&nbsp;&nbsp;</strong></p>\r\n', 'sEc1eMlwSLXxYvsIW6pN.jpg', '[\"JyTKxHeOXhi9Uu7rux14.jpg\",\"wkGz8S34rFmsaEy3GITM.jpg\"]', '850', '2020-12-12 21:42:38', '2020-12-13 05:42:38', '98', '', '', '', 'off'),
(394, 'التركيبة السداسية السحرية للمناعة و التخصيب', '1250', '', '', '', '', '', '<p><strong>تتميز هذه التركيبة برفع المناعة من الدرجة الأولى لأنها تتكون من عدة مكونات قوية كالعكبر( propolis) الذي يعتبر أقوى مضاد حيوي على الإطلاق ثم الماكا وطلع النخيل،، عصى علي، الجنسنك ،حبوب اللقاح الممزوجة بعسل نحل طبيعي مع غذاء ملكة النحل المفيدة في رفع المناعة وكذلك التخصيب عند الرجال والنساء، والضعف الجنسي وتعزيز الطاقة البدنية وتنظيف الجسم والجهاز الهضمي من السموم، كما أنها تساعد في علاج مشاكل الجهاز الهضمي كجرثومة المعدة والقولون العصبي المسمى ب (بومزوي) عند المغاربة&nbsp;&nbsp;</strong></p>\r\n', 'mVbXFvwgYuHQEr5kCaBJ.jpg', '[\"k8jbcDBVZxYJ5NsmiOWk.jpg\",\"EglOiryWCDPnLg18dXbr.jpg\"]', '750', '2020-12-12 21:42:16', '2020-12-13 05:42:16', '98', '', '', '', 'off'),
(396, 'تركيبة الحساسية والربو', '1099', '', '', '', '', '', '<p><strong>تتكون هذه التركيبة من عشبة سحرية إسمها (الخلة) وتسمى (البشنيخة) بالمغربية وهي ممتازة لمشاكل الجهاز التنفسي، وكذلك الزعتر المغربي الأصلي والحبة السوداء و بذور البصل وبذور الكرفس عسل نحل طبيعي ( الاوكالبتوس) هذه التركيبة مفيدة جدا في علاج الحساسية الصدرية وضيق التنفس والربو المزمن طبيعية 100%&nbsp;&nbsp;</strong></p>\r\n', 'ABhx0ee0NYwf7XW3DEqd.jpg', '[\"K9RuVq28rol7fuIJ4iwp.jpg\",\"wkRMxmqNUKoya2Iln0GU.jpg\"]', '699', '2020-12-12 19:09:17', '2020-12-13 03:09:17', '98', '', '', '', 'off'),
(397, 'المسمنة الصحراوية', '1350', '', '', '', '', '', '<p><strong>من بين المنتجات الرائجة لدى اسفار هناك التركيبة الصحراوية المتكونة من أعشاب طبية طبيعية&nbsp;كاللوز وعين الجمل والسمسم و التمر والشمر والينسون والبكبوكة والكثيرة عسل نحل طبيعي كلها مكونات طبيعية 100 % والتي تصلح لزيادة الوزن بشكل طبيعي وبدون أي أضرار على الجسم&nbsp;</strong></p>\r\n', 'bu9AUnLxQGNHRdkMWLRn.jpg', '[\"cVwx88b7fgG5esJZNWtm.jpg\",\"QBNOxOXLVL3y5d2dt2fy.jpg\"]', '1099', '2020-12-12 22:55:43', '2020-12-13 06:55:43', '98', '', '', '', 'off');

-- --------------------------------------------------------

--
-- Structure de la table `productscategories`
--

CREATE TABLE `productscategories` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `productscategories`
--

INSERT INTO `productscategories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`, `active`) VALUES
(96, 'مكملات غدائية', 'مكملات غدائية', 'Ycf1YL0dh7qerxbKsFG5.jpg', '2020-11-08 19:57:19', '2020-12-12 22:58:00', '1'),
(98, ' خلطات', 'خلطات', 'O326imliFhUh9qbMV6Cf.jpg', '2020-11-08 20:14:28', '2020-12-12 22:59:59', '1');

-- --------------------------------------------------------

--
-- Structure de la table `reclamation`
--

CREATE TABLE `reclamation` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `image`, `created_at`, `updated_at`, `link`) VALUES
(26, '6mlPwMSmvlMuOK7c3jl0.jpg', '2020-12-02 11:01:09', '2020-12-02 17:01:09', '#'),
(28, 'IyKpj49Yk1qeUa9avAWH.jpg', '2020-12-13 00:00:27', '2020-12-13 00:00:27', ''),
(29, '8s1j6FoV9huCoZ7W0Q3c.jpg', '2020-12-13 00:01:31', '2020-12-13 00:01:31', '');

-- --------------------------------------------------------

--
-- Structure de la table `sortielistproducts`
--

CREATE TABLE `sortielistproducts` (
  `id` int(11) NOT NULL,
  `productID` varchar(255) DEFAULT NULL,
  `cityID` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `valid` varchar(255) NOT NULL,
  `statue` varchar(255) NOT NULL,
  `sortie_list_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `saved_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sortielistproducts`
--

INSERT INTO `sortielistproducts` (`id`, `productID`, `cityID`, `quantity`, `valid`, `statue`, `sortie_list_id`, `created_at`, `updated_at`, `saved_at`) VALUES
(1, '28', '29', '10', '15', '', '95', '2020-06-26 11:37:43', '2020-06-23 02:30:44', '0000-00-00'),
(2, '28', '29', '445', '15', '', '96', '2020-06-26 11:37:46', '2020-06-23 02:30:55', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `CityID` int(255) NOT NULL,
  `stockTheorique` int(255) NOT NULL,
  `StockPhisique` int(255) NOT NULL,
  `stockEnCours` int(255) NOT NULL,
  `Livre` varchar(255) NOT NULL,
  `Recue` int(255) NOT NULL,
  `ProduitID` int(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `User_id` varchar(255) NOT NULL,
  `stockRetour` varchar(255) NOT NULL,
  `stockVirtuel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `CityID`, `stockTheorique`, `StockPhisique`, `stockEnCours`, `Livre`, `Recue`, `ProduitID`, `created_at`, `updated_at`, `User_id`, `stockRetour`, `stockVirtuel`) VALUES
(52, 29, 0, 0, 0, '', 0, 28, '2020-06-22 21:30:55', '2020-06-23 02:30:55', '', '', '445');

-- --------------------------------------------------------

--
-- Structure de la table `stockentree`
--

CREATE TABLE `stockentree` (
  `id` int(11) NOT NULL,
  `productID` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `valid` varchar(255) NOT NULL,
  `statue` varchar(255) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `stockgeneral`
--

CREATE TABLE `stockgeneral` (
  `id` int(11) NOT NULL,
  `ProductID` varchar(255) NOT NULL,
  `sortie` varchar(255) NOT NULL,
  `Entree` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stockgeneral`
--

INSERT INTO `stockgeneral` (`id`, `ProductID`, `sortie`, `Entree`, `created_at`, `updated_at`) VALUES
(1, '28', '', '70173', '2020-06-22 21:33:04', '2020-06-23 02:33:04');

-- --------------------------------------------------------

--
-- Structure de la table `stocksortie`
--

CREATE TABLE `stocksortie` (
  `id` int(11) NOT NULL,
  `listID` varchar(255) NOT NULL,
  `ProductID` varchar(255) NOT NULL,
  `statue` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `saved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stocksortie`
--

INSERT INTO `stocksortie` (`id`, `listID`, `ProductID`, `statue`, `created_at`, `updated_at`, `saved_at`) VALUES
(95, '', '28', '', '2020-06-23 02:30:44', '2020-06-23 02:30:44', '2020-06-23 04:00:00'),
(96, '', '28', '', '2020-06-23 02:30:55', '2020-06-23 02:30:55', '2020-06-23 02:30:55');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `statue` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `phone` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `deliver_price` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `statue`, `username`, `full_name`, `email`, `password`, `created_at`, `phone`, `role`, `code`, `deliver_price`, `city`, `updated_at`) VALUES
(10000, 'supper', 'admin', 'caynoon', 'admin@admin.com', '1234', '2018-08-20 15:59:10', '0624097078', 'admin', '', '', '', '2020-11-08 20:18:35'),
(10003, '', 'Asala', '', 'aboukainanassala@gmail.com', '0610184503', '2020-10-14 20:04:34', '0610184503', 'employee', '', '', '', '2020-10-14 20:04:34');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dailystock`
--
ALTER TABLE `dailystock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `defaultcharges`
--
ALTER TABLE `defaultcharges`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historyentree`
--
ALTER TABLE `historyentree`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `historymoney`
--
ALTER TABLE `historymoney`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `lists`
--
ALTER TABLE `lists`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `multisale`
--
ALTER TABLE `multisale`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `productscategories`
--
ALTER TABLE `productscategories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reclamation`
--
ALTER TABLE `reclamation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sortielistproducts`
--
ALTER TABLE `sortielistproducts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stockentree`
--
ALTER TABLE `stockentree`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stockgeneral`
--
ALTER TABLE `stockgeneral`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stocksortie`
--
ALTER TABLE `stocksortie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `dailystock`
--
ALTER TABLE `dailystock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `defaultcharges`
--
ALTER TABLE `defaultcharges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `historyentree`
--
ALTER TABLE `historyentree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `historymoney`
--
ALTER TABLE `historymoney`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `lists`
--
ALTER TABLE `lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `multisale`
--
ALTER TABLE `multisale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `new`
--
ALTER TABLE `new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT pour la table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT pour la table `productscategories`
--
ALTER TABLE `productscategories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `reclamation`
--
ALTER TABLE `reclamation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `sortielistproducts`
--
ALTER TABLE `sortielistproducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `stockentree`
--
ALTER TABLE `stockentree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stockgeneral`
--
ALTER TABLE `stockgeneral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `stocksortie`
--
ALTER TABLE `stocksortie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
