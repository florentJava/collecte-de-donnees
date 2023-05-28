-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 28 mai 2023 à 12:53
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ubora_collecte`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nom` varchar(89) NOT NULL,
  `prenom` varchar(89) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`) VALUES
(19, 'ROOT', 'florent@gm'),
(26, 'zeukeng', 'florent');

-- --------------------------------------------------------

--
-- Structure de la table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category_list`
--

INSERT INTO `category_list` (`id`, `category`) VALUES
(1, 'President'),
(3, 'Vice Presindent'),
(4, 'Officer');

-- --------------------------------------------------------

--
-- Structure de la table `formulaire`
--

CREATE TABLE `formulaire` (
  `id_sr` int(10) NOT NULL,
  `util` varchar(20) NOT NULL,
  `sujet` varchar(400) DEFAULT NULL,
  `daje` date NOT NULL,
  `traiter` varchar(20) NOT NULL DEFAULT 'vide',
  `Etat` varchar(25) NOT NULL DEFAULT 'non',
  `commentaireUbora` varchar(300) NOT NULL,
  `reviser_par` varchar(40) NOT NULL DEFAULT 'non révisé ',
  `reviser_le` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `formulaire`
--

INSERT INTO `formulaire` (`id_sr`, `util`, `sujet`, `daje`, `traiter`, `Etat`, `commentaireUbora`, `reviser_par`, `reviser_le`) VALUES
(1, '26', '1', '2023-05-26', 'envoyer', 'non', 'nouveau commentaire', 'ROOT', '2023-05-26'),
(2, '26', '2', '2023-05-26', 'envoyer', 'non', 'rfr', 'ROOT', '2023-05-26'),
(3, '26', '3', '2023-05-26', 'envoyer', 'non', 'yo les bros', 'ROOT', '2023-05-26'),
(4, '26', '4', '2023-05-26', 'envoyer', 'non', '', 'non révisé ', NULL),
(5, '26', '5', '2023-05-27', 'envoyer', 'non', '', 'non révisé ', NULL),
(6, '26', '6', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(7, '26', '7', '2023-05-26', 'envoyer', 'non', '', 'non révisé ', NULL),
(8, '26', '8', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(9, '26', '9', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(10, '26', '10', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(11, '26', '11', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(12, '26', '12', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(13, '26', '13', '2023-05-26', 'envoyer', 'non', 'efdwefrefw', 'ROOT', '2023-05-26'),
(14, '26', '14', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(15, '26', '15', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(16, '26', '16', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(17, '26', '17', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(18, '26', '18', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(19, '26', '19', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(20, '26', '20', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(21, '26', '21', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(22, '26', '22', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(23, '26', '23', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(24, '26', '24', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(25, '26', '25', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(26, '26', '26', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(27, '26', '27', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(28, '26', '28', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(29, '26', '29', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(30, '26', '30', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(31, '26', '31', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(32, '26', '32', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(33, '26', '33', '2023-05-26', 'envoyer', 'non', 'rrrr', 'ROOT', '2023-05-26'),
(34, '26', '34', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(35, '26', '35', '2023-05-26', 'envoyer', 'non', 'fffffff', 'ROOT', '2023-05-26'),
(36, '26', '36', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(37, '26', '37', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(38, '26', '38', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL),
(39, '26', '39', '0000-00-00', 'vide', 'non', '', 'non révisé ', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id_groupe` int(11) NOT NULL,
  `libelle` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `libelle`) VALUES
(1, 'Stratégie et Planification'),
(2, 'Prise de Décision  concernant la Gestion d\'Actifs'),
(3, 'Mise en Oeuvre du Cycle de Vie'),
(4, 'Information sur les Actifs'),
(5, 'Organisation et Capital Humain'),
(6, 'Risques et Examen (Audit et Revue)');

-- --------------------------------------------------------

--
-- Doublure de structure pour la vue `lesouis`
-- (Voir ci-dessous la vue réelle)
--
CREATE TABLE `lesouis` (
`id` int(5)
,`sujet` varchar(4000)
,`nbr` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `non_lue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `notification`
--

INSERT INTO `notification` (`non_lue`) VALUES
(66);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_sujet` int(6) DEFAULT NULL,
  `id_question` varchar(5) NOT NULL,
  `question` varchar(4000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_sujet`, `id_question`, `question`) VALUES
(1, '1.1', 'Est-ce que la politique de gestion d\'actifs a été approuvée par la Haute Direction?'),
(1, '1.2', 'Est-ce que la politique de gestion d\'actifs est appropriée à la vision, à la taille et à la nature de l\'entreprise?'),
(1, '1.3', 'Est-ce que la politique de gestion d\'actifs contient un ensemble de principes, d\'intentions, des exigences et les engagements de l\'entreprise.'),
(1, '1.4', 'Est-ce que la politique de gestion d\'actifs offre un cadre pour le développement et l\'implémentation du plan stratégique de gestion d\'actifs?'),
(1, '1.5', 'La politique de gestion d\'actifs est -elle alignée au plan de l\'entreprise, aux objectifs de l\'entreprise, aux exigences des parties prenantes, et aux autres politiques de l\'entreprise?'),
(1, '1.6', 'La politique de gestion d\'actifs indique-t-elle clairement l\'engagement de l\'entreprise a respecter les exigences réglémentaires, légales et l\'engagement de l\'entreprise par rapport à l\'amélioration continue?'),
(1, '1.7', 'La politique de gestion d\'actifs est-elle communiquée de manière appropriée aux employés et aux différentes parties prenantes?'),
(1, '1.8', 'La politique de gestion d\'actifs est-elle révisée et mise à jour régulièrement afin de soutenir l\'amélioration continue?'),
(10, '10.1', 'Est-ce que les critères pour développer la stratégie pour les différents types d\'arrêts sont alignés avec les critères de l\'organisation pour les prises de décisions relatives à la gestion d\'actifs covenus avec les parties prenantes?'),
(10, '10.2', 'Est-ce que la stratégie des différents arrêts est alignée avec la politique de gestion d\'actifs, les objectifs de gestion d\'actifs et le plan stratégique de gestion d\'actifs?'),
(10, '10.3', 'Est-ce que la stratégie des différents arrêts prend en compte les exigences des toutes les parties prenantes internes ainsi que l\'impact des arrêts planifiés sur les parties prenantes externes y compris les clients?'),
(10, '10.4', 'Est-ce que la stratégie des arrêts considère le compromis entre peu d\'arrêts de longues durées et des arrêts fréquents de courtes durées?'),
(10, '10.5', 'Est-ce que la stratégie des arrêts est prise en compte lors du développement et l\'implémentation du plan de gestion d\'actifs?'),
(10, '10.6', 'Est-ce que l\'entreprise s\'assure que les plans de gestion d\'actifs prennent en compte les exigences pertinentes venant de l\'extérieur du système de gestion d\'actifs?'),
(11, '11.1', 'Est-ce que l\'entreprise détermine toute l\'information financière, non financière et l\'information technique requise qui permettraient à l\'entreprise de satisfaire ses obligations?'),
(11, '11.2', 'Est-ce que l\'entreprise a toute l\'information pertinente (documentée) requise par les normes applicabes ainsi que les exigences légales et réglémentaires pour supporter le système de gestion d\'actifs?'),
(11, '11.3', 'Est-ce que l\'entreprise a un processus en place pour s\'assurer que tout document requis par le système de gestion d\'actifs, les normes ainsi que les exigences légales et réglémentaires est disponible et prêt à l\'usage quand requis et adéquatement protégé? '),
(11, '11.4', 'Est-ce que l\'entreprise a un processus pour créer et régulièrement reviser et mettre à jour l\'information documentée?'),
(11, '11.5', 'Est-ce que l\'organisation a un processus de contrôle de l\'information documentée, incluant la distribution et l\'accès, le stockage et la préservation, le contrôle de version, la retention ou la destruction?'),
(11, '11.6', 'Est-ce que l\'organisation a un processus d\'identification et de contrôle de l\'information documentée en provenance de l\'extérieur de l\'organisation qui est requise par le système de gestion d\'actifs?'),
(11, '11.7', 'Est-ce que les documents techniques de l\'entreprise supportent le système de gestion d\'actif et sont alignés à ce dernier?'),
(11, '11.8', 'Est-ce que l\'entreprise est capable de démontrer comment tout changement aux documents techniques et règlementaires est communiqué de manière appropriée?'),
(11, '11.9', 'Est-ce que l\'entreprise a un processus en place pour s\'assurer qu\'il y a de la cohérence et de la traçabilité entre la conformité des données par rapport aux exigences réglémentaires et légales?'),
(12, '12.1', 'Est-ce que l\'entreprise détermine et documente les processus et méthodes relatives à la création et l\'acquisition d\'actifs?'),
(12, '12.2', 'Est-ce que les processus et les méthodes de l\'entreprise relatives à l\'acquisition et la création des actifs font partie du cycle de vie des actifs?'),
(12, '12.3', 'Est-ce que les processus et les méthodes de l\'entreprise relatives à l\'acquisition et la création des actifs identifient et gèrent les risques techniques et non-techniques associés à l\'acquisition et la création des actifs de l\'entreprise?'),
(12, '12.4', 'Est-ce que les processus documentés garantissent que l\'acquisition et la création des actifs sont alignées aux normes de l\'entreprise et aux critères de gestion d\'actifs?'),
(12, '12.5', 'Est-ce que le processus d\'acquisition des actifs est conforme aux exigences légales et réglémentaires, incluant toutes les politiques de l\'entreprise ainsi que la politique de gestion d\'actifs?'),
(12, '12.6', 'Est-ce que l\'entreprise considère le coût du cycle de vie lors de l\'acquisition et la création des actifs?'),
(12, '12.7', 'Est-ce que le processus d\'acquisition des actifs utilise les systèmes de contrôles de gestion de projet afin de s\'assurer que les plans de gestion d\'actifs soient livrés à temps à un coût optimal en considérant les échéanciers pertinents?'),
(13, '13.1', 'Est-ce que l\'entreprise établit et documente les processus et méthodes de gestion des ses actifs au cours de leur cycle de vie?'),
(13, '13.2', 'Est-ce l\'entreprise tient compte de l\'interaction et de l\'interdépendance des actifs qui fonctionnent comme un système (ou des systèmes)?'),
(13, '13.3', 'Est-ce que l\'entreprise a des processus pour s\'assurer que les solutions globales du système sont optimisés pour les coûts, les risques et la performance?'),
(13, '13.4', 'Est-ce que l\'entreprise a des processus et méthodes qui considèrent les risques liés aux actififs qui évolueront avec le temps et toute obligation résiduelle au-delà de la période d\'exploitation ou d\'utilisation de ces actifs?'),
(13, '13.5', 'Est-ce que le système de gestion d\'actifs a l\'envergure appropriée selon la nature et la complexité de l\'entreprise?'),
(13, '13.6', 'Est-ce que l\'entreprise a un processus en place afin de s\'assurer que les normes d\'ingénierie des systèmes sont respectées?'),
(13, '13.7', 'Est-ce qu\'il y a un processus en place pour s\'assurer que les risques sont identifiés et gérés au niveau du système de manière cohérente avec les processus de gestion d\'actifs et de gestion de risques?'),
(14, '14.1', 'Est-ce que l\'entreprise détermine et documente les processus et méthodes pour gérer ses actifs au cours de leur durée de vie?'),
(14, '14.2', 'Est-ce que l\'entreprise détermine les exigences des informations pour supporter ses actifs au cours de leur durée de vie ainsi que pour supporter son système de gestion d\'actifs?'),
(14, '14.3', 'Est-ce que l\'entreprise a des processus pour évaluer les impacts des changements planifiés et pour gérer les risques qui en découlent?'),
(14, '14.4', 'Est-ce que l\'entreprise a des processus pour la dissémination de l\'information relative aux actifs aussi bien en interne qu\'en externe, et ceci au cours de leur durée de vie?'),
(14, '14.5', 'Est-ce que l\'entreprise a des processus  d\'évaluation et de reporting de performance des actifs et des des systèmes d\'actifs?'),
(14, '14.6', 'Est-ce que l\'entreprise a des processus pour identifier les non-conformités ou incidents relatifs à ses actifs et ses sytèmes d\'actifs et pour prendre les actions appropriées pour les adresser?'),
(14, '14.7', 'Est-ce que l\'organisation détermine les exigences par rapport à la façon dont l\'information sur les actifs sera identifiée et documentée afin de permettre la configuration des systèmes d\'actifs, afin de s\'assurer que les attributs physiques et fonctionnels sont cohérents avec les exigences opérationnelles et de conception à travers la durée de vie de l\'actif?'),
(14, '14.8', 'Est-ce que l\'organisation a des processus bien définis pour la collecte et le contrôle qualité de l\'information et de l\'ajout de l\'information dans les systèmes d\'information appropriés?'),
(14, '14.9', 'Est-ce que les pratiques de l\'entreprise sont conformes  aux normes de gestion de configuration pertinentes?'),
(15, '15.1', 'Est-ce que l\'entreprise détermine et documente les processus et méthodes pour gérer ses actifs au cours de leur durée de vie?'),
(15, '15.2', 'Est-ce que l\'entreprise détermine l\'envergure, les ressources, les responsabilités et le niveau de performance requis pour la gestion de ses actifs?'),
(15, '15.3', 'Est-ce que l\'entreprise planifie, implémente et contrôle les processus requis pour la mise en oeuvre des plans de gestion d\'actifs?'),
(15, '15.4', 'Est-ce que l\'entreprise détermine ses exigences en terme d\'information afin de supporter la gestion des actifs au cours de la durée de vie des actifs?'),
(15, '15.5', 'Est-ce que l\'entreprise revise la performance de ses actifs et de ses systèmes d\'actifs et prend les actions appropriées pour gérer la performance des actifs?'),
(15, '15.6', 'Est-ce que l\'entreprise a les processus pour identifier les incidents et les non conformités liés à ses actifs et ses systèmes d\'actifs et pour prendre les mesures correctives ou préventives pour les adresser?'),
(15, '15.7', 'Est-ce que l\'entreprise a identifié les actions de  maintenance faisant partie des processus et des méthodes pour gérer ses actifs?'),
(15, '15.8', 'Est-ce que l\'entreprise évalue l\'efficacité de ses stratégies de maintenance afin d\'assurer une mise en oeuvre optimale?'),
(15, '15.9', 'Est-ce que l\'organisation adapte sa maintenance lorsque le contexte d\'exploitation, les objectifs et les contraintes changent?'),
(16, '16.1', 'Est-ce que l\'entreprise détermine et documente les processus et les méthodes pour gérer ses actifs au cours de leur durée de vie?'),
(16, '16.10', 'Est-ce que l\'entreprise effectue des revues périodiques systématiques ainsi que la mise à jour des plans de fiabilité en utilisant les outils et les techniques appropriés?'),
(16, '16.2', 'Est-ce que l\'entreprise détermine ses exigences en terme d\'information afin de supporter son système de gestion d\'actifs au cours de la durée de vie de ces derniers?'),
(16, '16.3', 'Est-ce que l\'entreprise a les processus en place pour évaluer les impacts des changements planifiés et gérer les risques qui en découlent?'),
(16, '16.4', 'Est-ce que l\'entreprise a des processus pour l\'évaluation et le reporting sur la performance des actifs et des systèmes d\'actifs?'),
(16, '16.5', 'Est-ce que l\'organisation passe en revue la performance de ses actifs et de ses systèmes d\'actifs et mène des actions appropriées?'),
(16, '16.6', 'Est-ce que l\'entreprise a des processus en place pour identifier les non-conformités ou les incidents reliés à ses actifs et ses systèmes d\'actifs et pour mener les actions correctives ou préventives pour les adresser?'),
(16, '16.7', 'Est-ce que l\'entreprise utilise le processus d\'analyse des causes racines aligné aux objectifs de la fiabilité, et a développé des actions préventives  qui considèrent le coût, les risques et la performance?'),
(16, '16.8', 'Est-ce que l\'entreprise suit les actions d\'atténuation résultant de l\'analyse des causes racines, effectue des revues périodiques et les mises à jour des plans de fiabilité pour réfléter les résultats des analyses des causes racines?'),
(16, '16.9', 'Est-ce que l\'entreprise implémente suit un plan de fiabilité qui contient les objectifs et les exigences de la fiabilité?'),
(17, '17.1', 'Est-ce que l\'entreprise gère systématiquement l\'interaction entre l\'exploitation et les autres activités de la gestion d\'actifs au cours du cycle de vie des actifs?'),
(17, '17.10', 'Est-ce que l\'entreprise collecte et évalue les feedbacks et résultats des activités d\'exploitation et implémente les améliorations des régimes de fonctionnement requis?'),
(17, '17.2', 'Est-ce que l\'entreprise utilise les processus opérationnels pour adresser les risques et opportunités ainsi que les actions correctives et préventives?'),
(17, '17.3', 'Est-ce que l\'entreprise a des processus pour s\'assurer que les exigences d\'exploitation sont alignées au Système de Gestion d\'actifs?'),
(17, '17.4', 'Est-ce que l\'entreprise documente clairement les processus, les activités, les responsabilités et les risques reliés à la sous-traitance et assure l\'intégration de la sous-traitance dans le système de gestion d\'actifs?'),
(17, '17.5', 'Est-ce que l\'entreprise a les systèmes de contrôle en place pour s\'assurer que les activités d\'exploitation sont effectuées selon les exigences spécifiées?'),
(17, '17.6', 'Est-ce que l\'entreprise documente clairement selon les normes et spécifications appropriées les exigences d\'exploitation pour tous les actifs?'),
(17, '17.7', 'Est-ce que l\'entreprise retient de la documentation comme preuve que les activités d\'exploitation ont été effectuées selonles exigences?'),
(17, '17.8', 'Est-ce que l\'entreprise a mis sur pied un mécanisme pour s\'assurer d\'un niveau d\'interactions approprié entre l\'exploitation et les autres fonctions au cours du cycle de vie des actifs?'),
(17, '17.9', 'Est-ce que l\'entreprise a un processus de gestion du changement qui permet de contrôler, reviser et atténuer les conséquences des changements planifiés?'),
(18, '18.1', 'Est-ce que l\'entreprise fournit les ressources adéquates pour la gestion du système de gestion d\'actifs en conformité avec la stratégie des ressources?'),
(18, '18.2', 'Est-ce que l\'entreprise implémente et contrôle les exigences de la stratégie des ressources; qui adressent les besoins des plans de gestion des actifs et du système de gestion d\'actifs?'),
(18, '18.3', 'Est-ce que l\'entreprise effectue ses activités en utilisant un processus intégré de gestion des ressources?'),
(18, '18.4', 'Est-ce que l\'entreprise affecte le personnel aux tâches de manière systématique afin d\'assurer l\'efficacité et l\'efficience des ressources?'),
(18, '18.5', 'Est-ce que l\'entreprise considère et justifie la priorité des tâches, les risques et la flexibilité par rapports aux changement des plans lorsque les équipements et le personnel sont alloués?'),
(18, '18.6', 'Est-ce que l\'inventaire de l\'entreprise est délivré selon les exigences spécifiques dans un échéancier déterminé?'),
(18, '18.7', 'Est-ce que les équipements et les outillages de l\'entreprise sont maintenus et calibrés à une fréquence appropriée qui est cohérente avec les activités effectuées et les objectifs?'),
(18, '18.8', 'Est-ce que l\'entreprise applique des processus systématiques afin de s\'assurer que les ressources de la sous-traitance satisfont les spécifications internes et externes ainsi que les exigences?'),
(19, '19.1', 'Est-ce que les contraintes liées aux arrêts ont été prises en compte lorsque le plan stratégique de gestion d\'actifs et les plans de gestion d\'actifs étaient développés?'),
(19, '19.2', 'Est-ce que le planning de l\'exécution des activités aux arrêts est cohérent par rapport à la stratégie des arrêts?'),
(19, '19.3', 'Est-ce qu\'il y a des processus en place pour gérer et contrôler les activités liées aux arrêts afin de s\'assurer que l\'impact sur le service et les parties prenantes est minimisé et les mesures en place pour s\'assurer que les arrêts non planifiés sont minimisés et les risques contrôlés?'),
(19, '19.4', 'Est-ce qu\'il y a les mécanismes en place qui permettraient de maximiser les opportunités découlant des arrêts non planifiés ou prolongés?'),
(19, '19.5', 'Est-ce qu\'une communication effective est mise en place à travers les différentes activités du cycle de vie  afin de s\'assurer que les plans sont alignés en vue de minimiser les temps d\'arrêt?'),
(19, '19.6', 'Est-ce que les leçons apprises des arrêts sont utilisées pour améliorer la gestion des arrêts?'),
(2, '2.1', 'Les objectifs de la gestion d\'actifs sont-ils établis à un niveau important ou à une fonction importante de l\'entreprise?'),
(2, '2.10', 'Est-ce que le plan stratégique de gestion d\'actifs (SAMP) et les objectifs de la gestion d\'actifs prennent en compte les besoins existants et futurs en relation avec les actifs et les capacités de la gestion d\'actifs?'),
(2, '2.11', 'Est-ce que le plan stratégique de gestion d\'actifs et les objectifs de la gestion d\'actifs sont communiqués aux parties concernées aussi bien en interne qu\'en externe?'),
(2, '2.12', 'Est-ce que le plan de gestion stratégique des actifs et les objectifs de la gestion d\'actifs sont revisés et mis à jour régulièrement?'),
(2, '2.2', 'Les objectifs de la gestion d\'actifs tiennent-ils compte des attentes des parties prenantes ou bien d\'autres exigences pertinentes?'),
(2, '2.3', 'Les objectifs de la gestion d\'actifs sont-ils SMART?'),
(2, '2.4', 'Les objectifs de la gestion d\'actifs sont-ils documentés et inclus dans le plan stratégique de gestion d\'actifs (SAMP) ?'),
(2, '2.5', 'Est-ce que le plan stratégique de gestion d\'actifs définit l\'approche stratégique de l\'entreprise par rapport à la gestion d\'actifs et l\'atteinte des objectifs de la gestion d\'actif?'),
(2, '2.6', 'Est-ce que les objectifs de la gestion d\'actifs et le plan stratégique de gestion d,actifs sont alignés avec les objectifs de l\'entreprise, la politique de gestion d\'actifs et tout autre exigence pertinente?'),
(2, '2.7', 'Le plan stratégique de gestion d\'actifs est-il cohérent avec les critères de tolérance du risque and les critères de prise de décision de l\'entreprise?'),
(2, '2.8', 'Est-ce que le plan stratégique de gestion d\'actifs est cohérent avec la méthodologie de détermination de la criticité des actifs?'),
(2, '2.9', 'Est-ce que le plan stratégique de gestion d\'actifs indique le rôle du système de gestion d\'actifs dans l\'atteinte des objectifs de gestion d\'actifs et les plans de développement des capacités en gestion d\'actifs?'),
(20, '20.1', 'Est-ce que l\'entreprise a des processus et des plans documentés en place pour gérer les évènements non planifiés, incluant les non conformités avec les processus de gestion d\'actifs?'),
(20, '20.2', 'Est-ce que les plans de réponse contiennent les plans des ressources?'),
(20, '20.3', 'Est-ce que les plans de réponse sont intégrés à travers l\'entreprise?'),
(20, '20.4', 'Est-ce que l\'entreprise a identifié le scope, la méthode et le timing pour l\'analyse et les activités d\'évaluation des défaillances, des incidents et des non-conformités afin de déterminer les causes racines?'),
(20, '20.5', 'Est-ce que les preuves d\'analyse des défaillances, des incidents et des non-conformités sont retenues?'),
(20, '20.6', 'Est-ce que les procédurers d\'investigation des incidents et de reporting sont alignées avec les exigences obligatoires et autres?'),
(20, '20.7', 'Est-ce qu\'il y a des processus en place pour la planification et le contrôle de l\'implémentation des actions de correction(temporaires ou permanents), incluant la prise de contrôle des actifs et leur retour?'),
(20, '20.8', 'Est-ce que les actions incluent là ou c\'est aplicable l\'élimination des causes de non-conformité et tout changement au système de gestion d\'actifs pour prevenir les apparitions futures?'),
(20, '20.9', 'Est-ce que l\'entreprise maintien un registre pour consigner les défaillances, les incidents et les non-conformités, de même que les actions menées et leurs résultats?'),
(21, '21.1', 'Est-ce que le démantèlement et le retrait d\'actifs est considéré comme faisant partie de l\'analyse du coût et bénéfice à toutes les étapes importantes de la gestion du cycle de vie?'),
(21, '21.2', 'Est-ce que les activités de démantèlement et de retrait d\'actifs sont planifiées en incluant l\'intégration avec les autres activités de planification telles que la finance, les ressources humaines, les inventaires, etc ?'),
(21, '21.3', 'Est-ce que les processus de démantèlement et de retrait sont définis, documentés et appliquées de manière systématique?'),
(21, '21.4', 'Est-ce que l\'entreprise s\'assure que la documentation est disponible afin de démontrer que les processus sont bien suivis?'),
(21, '21.5', 'Est-ce que les processus de démantèlement s\'assurent que l\'information sur les actifs est mise à jour et que toutes les interfaces de ses actifs qui demeurent en services sont bien gérées?'),
(21, '21.6', 'Est-ce que la documentation sur l\'information des actifs est conservée pendant une période convenue au-delà du retrait des actifs telle que définie dans la politique de rétention de l\'information de l\'entreprise?'),
(22, '22.1', 'Est-ce que l\'entreprise détermine quelle information sur la gestion d\'actifs est requise pour soutenir ses actifs, la gestion de ses actifs, le système de gestion d\'actifs et les objectifs de l\'entreprise?'),
(22, '22.10', 'Est-ce qu\'il ya des exigences établies afin d\'aligner la terminologie (financière et non financière) pertinente à la gestion des actifs à travers toute l\'entreprise?'),
(22, '22.2', 'Est-ce que l\'entreprise a une stratégie documentée sur l\'information sur les actifs qui est alignée au Plan stratégique de gestion d\'actifs (SAMP)?'),
(22, '22.3', 'Est-ce que le dévelopement de la stratégie considère:\no L\'incidence des risques identifiés sur les exigences en matière d\'information?\no L\' information requise pour soutenir les décisions importantes sur les procédures, les processus et les activités de la gestion d\'actifs?\no L\'échange d\'information avec les différentes parties prenantes y compris les prestataires de service?\no Comment et quand l\'information doit être collectée, analysée et évaluée?\n\no L\'impact de la qualité, la disponibilité et la gestion de l\'information sur les prises de décision de l\'entreprise?'),
(22, '22.4', 'Est-ce que la stratégie définit la qualité requise pour l\'information sur les actifs?'),
(22, '22.5', 'Est-ce que la stratégie est conçue pour assurer une traçabilité et une cohérence entre les informations financières et non-financières pertinentes pour la gestion des actifs afin de satisfaire les exigences légales, réglémentaires et des parties prenantes?'),
(22, '22.6', 'Est-ce que la stratégie contient des objectifs  SMART liés aux améliorations proposées au niveau de l\'information sur les actifs notamment l\'écart entre l\'information actuelle disponible en terme de qualité et d\'exactitude et celle requise?'),
(22, '22.7', 'Est-ce que la stratégie identifie les processus qui sont requis pour gérer l\'information sur les actifs et assurer sa qualité, incluant la gouvernance, les responsabilités l\'imputabilité et tout programme d\'amélioration de ces processus?'),
(22, '22.8', 'Est-ce que la stratégie contient les exigences d\'affaires par rapport au système d\'information pour supporter les processus de l\'organisation et les besoins en information?'),
(22, '22.9', 'Est-ce que la stratégie inclut les processus pour s\'assurer que l\'information sur les actifs reste alignée aux besoins au fur et à mesure que les exigences de l\'entreprise évoluent, incluant la migration des données et des usagers des systèmes existants vers un nouveau système?'),
(23, '23.1', 'Est-ce que l\'entreprise  a developpé des normes, lignes directrices afin de s\'assurer d\'une approche systématique lors de la saisie d\'informations sur les actifs afin de satisfaire les besoins en matière d\'information sur les actifs, telle que définie dans la stratégie de l\'information sur les actifs?'),
(23, '23.2', 'Est-ce que la structure de l\'information a une hiérarchie pour les actifs et facilite la saisie de leur emplacement physique?'),
(23, '23.3', 'Est-ce qu\'il  existe une définition des attributs requis pour l\'information sur les actifs, incluant une liste de valeurs possibles et les critères de qualité?'),
(23, '23.4', 'Est-ce que la structure de l\'information facilite la collecte des données sur l\'utilisation des actifs, l\'état, la performance, les incidents, les non conformités et  décrit comment ceci sera saisi?'),
(23, '23.5', 'Est-ce que l\'entreprise a défini la qualité et la précision requise pour les informations sur les actifs?'),
(23, '23.6', 'Est-ce que l\'organisation a déterminé comment la qualité et la précision des informations sur les actifs seront évaluées?'),
(24, '24.1', 'Est-ce que l\'organisation a identifié les systèmes d\'information d\'actifs nécessaires et l\'architecture requise afin de collecter, stocker, traiter et analyser l\'information sur les actifs afin de pouvoir gérer ses actifs à travers le cycle de vie des actifs et mettre en exécution la stratégie de l\'information sur les actifs?'),
(24, '24.2', 'Est-ce que l\'entreprise a un plan d\'implementation des systèmes d\'information d\'actifs, ainsi que des plans de migration (si requis)?'),
(24, '24.3', 'Est-ce que l\'entreprise a implémenté en cohérence avec la stratégie TI de l\'organisation les systèmes requis afin de mettre en exécution la stratégie de l,information sur les actifs?'),
(24, '24.4', 'Est-ce qu\'il y a une considération par rapport au mix des applications logiciels en tenant compte des contraintes liées à l\'entreprise?'),
(24, '24.5', 'Est-ce que l\'organisation a clairement établi le contrôle et les responsabilités pour le système?'),
(24, '24.6', 'Est-ce que le système d\'information des actifs a un système de reporting robuste?'),
(25, '25.1', 'Est qu\'il existe des processus de gouvernance afin de donner l\'assurance que l\'information est conforme à la qualité et la précision requises telles que définies dans la stratégie d\'information sur les actifs et les normes d\'information sur les actifs?'),
(25, '25.10', 'Est-ce que l\'information documentée dont la source est externe à l\'entreprise et est réputée nécessaire pour les activités de gestion d\'actifs est identifiée et contrôlée?'),
(25, '25.2', 'Est-ce qu\'il existe des plans de collecte et de maintenance de données afin d\'adresser des écarts par rapport à l\'information identifiée dans la stratégie de l\'information sur les actifs?'),
(25, '25.3', 'Est-ce qu\'il existe des processus pour assurer la founiture de l\'information sur les actifs, découlant des interventions sur un actif?'),
(25, '25.4', 'Est-ce qu\'il existe des contrôles incorporés aux processus de prise de décision pour s\'assurer que les données ayant la qualité requise sont utilisées pour les prises de décision?'),
(25, '25.5', 'Est-ce que les processus et la gouvernance pour gérer l\'information sur les actifs sont bien spécifiés, implémentés et maintenus?'),
(25, '25.6', 'Est-ce qu\'il y a des processus et des systèmes en place pour le stockage, la préservation, la distribution, l\'extraction et l\'usage des données et des informations afin de s\'assurer que l\'information requise est disponible et propre à l\'utilisation quand et ou c\'est requis?'),
(25, '25.7', 'Est-ce que l\'information est adéquatement protégée, incluant la compromisssion de la confidentialité, l\'utilisation inappropriée ou la perte d\'intégrité?'),
(25, '25.8', 'Est-ce qu\'il existe des processus en place pour le contrôle des changements sur les données et l\'information?'),
(25, '25.9', 'Est-ce qu\'il y a des processus et des systèmes en place pour la retention et la destruction des données et des informations?'),
(26, '26.1', 'Est-ce que l\'entreprise identifie les activités qui sont appropriées pour la sous-traitance et celles qui doivent restées en interne?'),
(26, '26.10', 'Est-ce que l\'entreprise s\'assure que l\'exécution des activités sous-traitées est activement suivi à travers l\'établissement des indicateurs de performance appropriés et cohérents avec les exigences du système de gestion d\'actifs?'),
(26, '26.11', 'Est-ce que l\'entreprise fait le suivi des circonstances commerciales et les structures de participation (propriété) des prestataires de services et des fournisseurs afin d\'assurer la longévité et la fiabilité de la relation?'),
(26, '26.12', 'Est-ce que l\'organisation a un processus de minimisation du risque lorsqu\'elle fait la transition d\'un fournisseur à un autre?'),
(26, '26.2', 'Est-ce que l\'organisation fournit les ressources requises pour atteindre les objecrifs de la gestion des actifs et pour l\'implémentation des activités spécifiées dans les plans de gestion d\'actifs, incluant les activités sous-traitées?'),
(26, '26.3', 'Est-ce que lorsque l\'entreprise développe les processus et détermine les objectifs pour les activités sous-traitées de la gestion des actifs, ceux-ci sont alignés au plan stratégique de gestion d\'actifs et aux objectifs de la gestion d\'actifs, le système de gestion des actifs et les autres processus internes?'),
(26, '26.4', 'Est-ce que l\'entreprise établit les processus de gestion des risques et des opportunités qui garantissent que les processus et activités sous-traités sont contrôlés, sont cohérents avec l\'atteinte des objectifs de la gestion d\'actifs et qui sont intégrés au système de gestion d\'actifs?'),
(26, '26.5', 'Est-ce que les rôles et responsabilités pour la gestion des activités sous-traitées sont clairement définis?'),
(26, '26.6', 'Est-ce que la stratégie de ressources de l\'entreprise inclut la sélection des prestataires de services qualifiés et le developpement des critères clairs et les niveaux de services?'),
(26, '26.7', 'Est-ce que l\'entreprise spécifie et documente  clairement les exigences, le scope et les moyens pour l\'information et le partage des connaissances pour les activités sous-traitées?'),
(26, '26.8', 'Est-ce que l\'entreprise s\'assure que les activités sous-traitées satisfont aux exigences de compétence, sensibilisation et documentation en lien avec les exigences du système de gestion des actifs?'),
(26, '26.9', 'Est-ce que l\'organisation établit et implémente les contrats avec des systèmes d\'incitatifs adéquats et bâtit activement des relations long terme durables avec les fournisseurs?'),
(27, '27.1', 'Est-ce que la Haute Direction de l\'entreprise démontre un leadership et un engagement par rapport à la gestion des actifs en s\'assurant que la Politique de Gestion d\'Actifs, le Plan Stratégique de Gestion d\'Actifs et les Objectifs de la Gestion d\'Actifs sont établis et sont alignés aux objectifs de l\'entreprise?'),
(27, '27.10', 'Est-ce que les leaders sont responsables de s\'assurer que les décisions en Gestion d\'Actifs sont prises à un niveau de responsabilité adéquat?'),
(27, '27.11', 'Est-ce que la Haute Direction rassure les parties prenantes sur la direction prise et les bénéfices qui seront réalisés?'),
(27, '27.12', 'Est-ce que la Haute Direction et les leaders valident les  principaux documents du Système de Gestion d\'Actifs?'),
(27, '27.13', 'Est-ce que la Haute Direction et les leaders identifient les interfaces entre les activités de la Gestion d\'actifs et les autres activités de l\'entreprise?'),
(27, '27.2', 'Est-ce que la Haute Direction s\'assure que les exigences du Système de Gestion d\'Actifs sont intégrées dans les processus d\'affaires et que le Système de Gestion d\'Actifs délivre les résultats attendus?'),
(27, '27.3', 'Est-ce que la Haute Direction s\'assure que les ressources pour le Système de Gestion d\'Actifs sont disponibles et incite le personnel à contribuer à la gestion effective des actifs?'),
(27, '27.4', 'Est-ce que les leaders de l\'entreprise influencent  et supportent le personnel afin qu\'il exécute la stratégie et réalise les objectifs de l\'entreprise?'),
(27, '27.5', 'Est-ce que les leaders de l\'entreprise communiquent de manière claire et concise sur l\'importance de la Gestion des Actifs et les exigences du Système de Gestion des Actifs?'),
(27, '27.6', 'Est-ce que la Haute Direction promeut la collaboration de manière transversale et supporte le leadership dans le domaine de la Gestion d\'Actifs?'),
(27, '27.7', 'Est-ce que les leaders démontrent par leur comportement, leur engagement par rapport aux valeurs et principes de la Gestion d\'Actifs tels que déterminés dans la Politique de Gestion d\'Actifs, les objectifs de la Gestion d\'Actifs, le Plan Stratégique de Gestion d\'Actifs?'),
(27, '27.8', 'Est-ce que la Haute Direction s\'assure de l\'alignement et l\'intégration du risque sur les actifs dans le système de gestion de risques de l\'entreprise?'),
(27, '27.9', 'Est-ce que le leadership promeut l\'amélioration continue?'),
(28, '28.1', 'Est-ce que l\'entreprise comprend clairement son but et prend en considération les facteurs multiples (par exemple: le secteur, les produits, les services, l\'emplacement, l\'échelle, les clients et les parties prenantes) et si les actifs et la Gestion d\'Actifs sont essentiels à ce but ou alors ils  sont tout simplement facilitateurs?'),
(28, '28.10', 'Est-ce que les individus peuvent ouvertement remettre en question de manière courtoise la façon de travailler afin d\'améliorer en continu le Système de Gestion d\'Actifs?'),
(28, '28.11', 'Est-ce que la Haute Direction assigne des rôles, responsabilités et autorité en ce qui concerne le reporting des performances du Système de Gestion d\'Actifs à la Haute Direction?'),
(28, '28.2', 'Est-ce que l\'entreprise prend en compte les facteurs internes et externes quand ils conçoivent la structure organisationelle appropriée? ( Social, culturel, politique, légal, règlémentaire, financière, technologique, économique, environnemental, gouvernance interne, capacité, politiques, stratégies, objectifs, etc.)'),
(28, '28.3', 'Est-ce que l\'entreprise conçoit et implémente une structure organisationnelle adéquate qui de manière claire et sans ambiguité identifie les rôles et responsabilités?'),
(28, '28.4', 'Est-ce que les rôles et responsabilités sont bien clairs pour tout le monde, sont communiqués et mis à jour au besoin?'),
(28, '28.5', 'Est-ce que la Haute Direction assigne les responsabilités, les rôles et l\'autorité pour s\'assurer de l\'adéquation, la pertinence et l\'effectivité du Système de Gestion d\'Actifs et pour s\'assurer aussi que le Système de Gestion d\'Actifs contribue à l\'exécution du Plan Stratégique de Gestion d\'Actifs (SAMP)?'),
(28, '28.6', 'Est-ce que la Haute Direction assigne les responsabilités, les rôles et l\'autorité pour le developpement et la mise à jour du Plan Stratégique de Gestion d\'Actifs, les objectis de la Gestion d\'Actifs, et les Plans de Gestion d\'Actifs?'),
(28, '28.7', 'Est-ce que les processus de prise de décision sont clairement définis à travers une structure organisationnelle transversale et le management est mieux placé pour être leader pour prendre les décisions clé en terme de performance et de fiabilité?'),
(28, '28.8', 'Est-ce que la structure organisationelle est dotée des ressources en cohérence avec ses rôles, responsabilités et charge de travail pour faciliter le fonctionnement efficace de l\'entreprise et réaliser les objectifs de la Gestion d\'Actifs ainsi que les exigences réglémentaires et celles des parties prenantes?'),
(28, '28.9', 'Est-ce que  les exigences en matière de compétence et de formation sont en adéquation avec la structure organisationnelle?'),
(29, '29.1', 'Est-ce que l\'entreprise identifie les problèmes internes et externes liés à son but et prend ceux-ci en compte lors de la conception de son Système de Gestion d\'Actifs?'),
(29, '29.10', 'Est-ce que l\'entreprise identifie et détermine les aspects de la culture qui doivent changer et le chemin pour passer de la culture actuelle à celle désirée?'),
(29, '29.11', 'Est-ce que l\'entreprise identifie de manière active les barrières et contraintes par rapport au changement de culture et planifie de manière proactive de les retirer ou de les atténuer? Est-ce qu\'en même temps l\'entreprise établit des processus effectifs pour le changement de culture et identifie le mécanisme de changement le plus effectif?'),
(29, '29.12', 'Est-ce que l\'entreprise est axée sur l\'apprentissage avec une compréhension constante des comportements et des bonnes pratiques?'),
(29, '29.2', 'Est-ce que tout le monde dans l\'entreprise perçoit la Gestion d\'Actifs comme un bon investissement avec des retombées positives sur le long terme?'),
(29, '29.3', 'Est-ce qu\'une auto-discipline systématique à tous les niveaux de l\'organisation est une habitude perceptible?'),
(29, '29.4', 'Est-ce que la Haute Direction de l\'entreprise influence de manière proactive la culture organisationnelle de l\'entreprise afin de s\'assurer que les comportements observés sont cohérents avec les valeurs de l\'entreprise, la Politique de Gestion d\'Actifs, et la réalisation des objectifs de la Gestion d\'Actifs?'),
(29, '29.5', 'Est-ce que l\'organisation s\'assure que  les rôles et responsabilités sont assignés et favorisent une approche collaborative et transversale de la Gestion d\'Actifs?'),
(29, '29.6', 'Est-ce que l\'organisation a une culture bien ancrée de la gestion des risques, telle que toute personne travaillant sous le contrôle de l\'entreprise est formée et sensibilisée de manière systématique sur les risques et les contrôles associés aux activités dont elle est responsable de même que sur  les opportunités ?'),
(29, '29.7', 'Est-ce que l\'entreprise considère et planifie pour le long terme et accorde de l\'importance aussi bien aux processus qu\'aux résultats?'),
(29, '29.8', 'Est-ce que la Haute Direction promeut la consultation collaborative et participative de manière à comprendre et à adresser les défis culturels auxquels l\'organisation fait face?'),
(29, '29.9', 'Est-ce qu\'il existe une chaîne de commandement et un processus de communication clair dans l\'entreprise et tout le monde comprend comment escalader les problèmes?'),
(3, '3.1', 'Est-ce que l\'organisation identifie les facteurs internes et externes qui pourraient poser des risques ou créer des opportunités pour atteindre les objectifs de gestion d\'actifs de l\'entreprise?'),
(3, '3.2', 'Est-ce que l\'entreprise fait des prévisions sur la façon dont ces facteurs peuvent influencer la demande pour les produits et les services dans le futur y compris les exigences qui seront requises pour les actifs?'),
(3, '3.3', 'Est-ce que des outils d\'analyse quantitative et des techniques sont utilisés pour la prévision de la demande et les niveaux de service requis en conformité avec les exigences de l\'entreprise?'),
(3, '3.4', 'L\'analyse de la demande est-elle utilisée pour développer des scénarii de planning alternatifs et pour adresser l\'incertitude dans les données et les modèles?'),
(3, '3.5', 'Est-ce que les résultats de l\'analyse de la demande sont pris en compte lorsque les objectifs de l\'entreprise et les objectifs de la gestion d\'actifs sont fixés, de même que quand le plan stratégique de gestion d\'actifs (SAMP) et les plans de gestion d\'actifs sont développés?'),
(3, '3.6', 'Est-ce les analyses de la demande sont revues et mises à jour afin de refléter les changements?'),
(30, '30.1', 'Est-ce que l\'organisation a établi un Système de Gestion des Compétences qui permet d\'aligner toutes les compétences requises en Gestion d\'Actifs aux rôles et responabilités identifiés au sein du Système de Gestion d\'Actifs de l\'entreprise?'),
(30, '30.2', 'Est-ce que le système de Gestion des Compétences incorpore les processus pour identifier les  exigences de compétences pour les activités de gestion d\'actifs et pour évaluer les compétences des ressources aussi bien externes qu\'internes?'),
(30, '30.3', 'Est-ce que l\'entreprise prend des actions nécessaires pour recruter les personnes compétentes et évaluer l\'effectivité de ces actions?'),
(30, '30.4', 'Est-ce que le Système de Gestion des Compétences est utilisé pour soutenir le recrutement, le développement et la formation de tout le personne au sein du Système de Gestion d\'Actifs?'),
(30, '30.5', 'Est-ce que l\'entreprise s\'assure que les personnes sont compétentes sur la base de l\'éducation, la formation et/ ou l\'expérience?'),
(30, '30.6', 'Est-ce que l\'entreprise identifie les activités appropriées pour combler tout écart en matière de compétence?'),
(30, '30.7', 'Est-ce que l\'entreprise retient les informations adéquates documentées comme preuve de compétence pour les ressources aussi bien internes que sous-traitées?'),
(30, '30.8', 'Est-ce que l\'entreprise revise périodiquement les exigences actuelles et futures en matière de compétence?'),
(30, '30.9', 'Est-ce que l\'entreprise fait des prévisions de manière proactive des exigences en matière de compétence pour supporter le développement du Système de Gestion d\'Actifs et réaliser le Plan Stratégique de Gestion d\'Actifs (SAMP)?'),
(31, '31.1', 'Est-ce que la Haute Direction s\'assure que la gestion des risques liés à la Gestion d\'Actifs est alignée à l\'approche de gestion des risques de l\'entreprise?'),
(31, '31.10', 'Est-ce que l\'entreprise documente les risques de manière à faciliter l\'identification, l\'enregistrement, l\'évaluation, le classement/la priorisation, le rapport, la revue, la mise à jour, l\'archivage et la clôture des risques enregistrés?'),
(31, '31.11', 'Est-ce que l\'entreprise gère les risques et opportunités qui découlent de la gestion du changement, et évalue les risques qui peuvent avoir un impact sur les objectifs avant que le changement ne soit implémenté?'),
(31, '31.12', 'Est-ce que l,\'entreprise inclut le traitement et le suivi des risques et opportunités dans ses processus pour la planification opérationnelle et le contrôle?'),
(31, '31.13', 'Est-ce que l\'entreprise évalue et fait un rapport sur l\'efficacité de ses processus sur la gestion des risques et des opportunités?'),
(31, '31.2', 'Est-ce que l\'approche de l\'entreprise par rapport à l\'évaluation et la gestion des risques et des opportunités assure la conformité avec les exigences légales et règlémentaires et est cohérent avec les exigences et les attentes des parties prenantes?'),
(31, '31.3', 'Est-ce que l\'entreprise évalue les risques et opportunités associés à la sous-traitance de toute activité qui pourrait avoir un impact sur la réalisation des objectifs de la Gestion d\'Actifs?'),
(31, '31.4', 'Est-ce que l\'entreprise détermine les risques et opportunités à adresser afin de:\na) faciliter l\'atteinte des résultats du Système de Gestion d\'Actifs?\nb) prévenir ou réduire les effets indésirables du Système de Gestion d\'Actifs\nc) d\'améliorer de façon continue le Système de Gestion d\'Actifs ?'),
(31, '31.5', 'Est-ce que l\'entreprise évalue comment ces risques peuvent évoluer dans le temps?'),
(31, '31.6', 'Est-ce que l\'entreprise crée et exécute des plans d\'action pour adresser les opportunités et les risques et intègre ces actions dan ses processus de gestion d\'actifs?'),
(31, '31.7', 'Est-ce que l\'entreprise évalue l\'efficacité des actions menées pour adresser les risques et les opportunités?'),
(31, '31.8', 'Est-ce que l\'organisation a documenté les processus de gestion de risques des actifs ainsi que les activités de gestion d\'actifs afin de:\na) Identifier et évaluer les risques et opportunités;\nb) Identifier la criticité des actifs par rapport à la réalisation des objectifs de la gestion d\'adtifs;\nc) Sélectionner et implémenter les traitements adéquats pour les risques et opportunités;\nd) Faire le suivi des traitements et de leur afficacité?'),
(31, '31.9', 'Est-ce que l\'entreprise s\'assure que le personnel qui effectue l\'évaluation des risques et des opportunités est compétent pour effectuer cette tâche?'),
(32, '32.1', 'Est-ce que la Haute Direction s\'assure que la gestion des risques liés à la gestion d\'Actifs est alignée à l\'approche de gestion des risques de l\'entreprise incluant le plan d\'urgence?'),
(32, '32.2', 'Est-ce que l\'entreprise a considéré et évalué les risques liés aux actifs et les autres risques (internes ou externes) qui ont un impact sur la capacité des actifs à continuer à fournir les functions requises sous des conditions défavorables?'),
(32, '32.3', 'Est-ce que l\'entreprise a établi des processus pour proactivement identifier les défaillances potentielles dans la performance des actifs et évaluer le besoin d\'action préventive telle qu\'indiqué dans le plan d\'urgence?'),
(32, '32.4', 'Est-ce que  la planification opérationnelle et les processus de contrôle de l\'entreprise incluent les processus documentés de gestion des plans d\'urgence pour les risques  pour lesquels ces processus ont été identifiés comme appropriés?'),
(32, '32.5', 'Est-ce que les plans d\'urgence ou les procédures incluent les informations sur:\na) L\'établissement des niveaux de commandement et la personne en charge pour chaque type d\'évènement;\nb) La matrice de responsabilité et les critères d\'escalade;\nc) La fourniture des ressources, et la maintenance de tout équipement, installations ou services qui pourraient être requis pendant les pertubations, les incidents ou les situations d\'urgence;\nd) L\'identification des organisations support requises avec leur responsabilité spécifique, nécessaire pour chaque type d\'évènement ( ou phase d\'un évènement), incluant la liste des contacts;\ne) Les contacts et les arrangements pour les communications internes et externes;\nf) À quel point il importe que les activités de gestion d\'actifs soient maintenues ou rétablies en cas de pertubation;\ng) La consignation des informations importantes en même temps qu\'on réagit aux incidents et urgences tout en les gérant;\nh) Le processus de retour des opérations à la normale.'),
(32, '32.6', 'Est-ce que l\'entreprise teste ses plans d\'urgence régulièrement de manière pratique et raisonnable et implémente les leçons apprises appropriées?'),
(32, '32.7', 'Est-ce que l\'entreprise recherche en continu l\'amélioration de la planification de son plan d\'urgence?'),
(33, '33,2', 'Est-ce que l\'entreprise prend en compte les attentes et les exigences des parties prenantes par rapport à l\'impact environnemental, social et financier par rapport aux activités liées à la gestion d\'actifs?'),
(33, '33.1', 'Est-ce que l\'entreprise détermine les problèmes externes qui sont pertinennts pour son but, incluant l\'impact environnemental, social et financier?'),
(33, '33.3', 'Est-ce que l\'entreprise démontre qu\'elle prend en compte les problèmes externes et les exigences des parties prenantes par rapport à l\'impact environnemental, social et financier des activités liées à la gestion d\'actifs dans le développement de sa politique de gestion d\'actifs, les objectifs de la gestion d\'actifs, le plan stratégique de gestion d\'actifs et les plans de gestion d\'actifs?'),
(34, '34.1', 'Est-ce que l\'entreprise a des politiques et des processus bien documentés qui traitent de la gestion du changement liée aux actifs, les processus de gestion d\'actifs et les ressources de support?'),
(34, '34.2', 'Est-ce que l\'entreprise effectue une évaluation des risques et opportunités pour tout changement planifié qui pourrait affecter l\'atteinte des objectifs de la gestion d\'actifs avant l\'implémentation des changements?'),
(34, '34.3', 'Est-ce que la gestion des risques associés aux changements liés aux actifs ou aux activités de la gestion d\'actifs est cohérent avec les processus documentés de gestion de risques de l,entreprise?'),
(34, '34.4', 'Est-ce que l\'entreprise a mis sur pied un processus de contrôle des changements planifiés et  la revue des conséquences non volontaires des changements tels que requis?\nEst-ce que l\'entreprise atténue les effets défavorables lorsque requis?'),
(34, '34.5', 'Est-ce qu\'il y a des preuves documentés pour démontrer que les processus et les plans de changement sont suivis?'),
(35, '35.1', 'Est-ce que l\'entreprise détermine ses exigences pour suivre et mesurer la performance et l\'état de ses actifs en incluant:\na) Qu\'est-ce qui va être mesuré?\nb) Les méthodes de suivi, de mesure, d\'analyse et d\'évaluation pour s\'assurer que les résultats sont valides\nc) L\'établissement des critères pour comprendre quand il y a un écart par rapport au niveau de performance requis et quand indiqué l\'identifier comme non-conformité\nd) La fréquence de suivi, de mesure, d\'analyse et d\'évaluation ?\n'),
(35, '35.2', 'Est-ce que l\'entreprise fait les rapports sur la performance des actifs, incluant l\'état des actifs selon les exigengences des parties prenantes?'),
(35, '35.3', 'Est-ce que l\'entreprise développe une hiérarchie de rapports sur la performance et l\'état des actifs appropriée aux besoins et décisions qui sont gérés?'),
(35, '35.4', 'Est-ce que l\'entreprise a developpé un ensemble de mesures de performance avancées et retardées pour ses actifs?'),
(35, '35.5', 'Est-ce que l\'entreprise établit le suivi et les rapports qui permettent de prédire les futurs performance et état des actifs?'),
(35, '35.6', 'Est-ce que l\'entreprise revise régulièrement le suivi, la mesure, l\'analyse et l\'évaluation de la performance des actifs et de l\'état des actifs?'),
(35, '35.7', 'Est-ce que l\'entreprise tient un registre du suivi, de l\'analyse et de l\'évaluation de la performance et de l\'état des actifs?'),
(36, '36.1', 'Est-ce que l\'entreprise détermine ses exigences pour suivre et mesurer l\'efficacité du Système de Gestion d\'Actifs incluant:\na) Qu\'est-ce qui doit être suivi et mesuré pour les performances financières et non financières (incluant à quel point l\'entreprise suit les éléments du Système de Gestion d\'Actifs)\nb) Les méthodes de suivi, de mesure, d\'analyse et d\'évaluation afin de s\'assurer que les résultats sont valides\nc) L\'établissement des critères pour comprendre quand il y a une déviation du niveau de performance requis et si indiqué l\'identifier comme non conformité\nd) La fréquence du suivi, des mesures d\'analyse et d\'évaluation\n'),
(36, '36.2', 'Est-ce que l\'entreprise fait des rapports sur l\'efficacité de son Système de Gestion d\'Actifs en tenant compte des exigences des parties prenantes?');
INSERT INTO `question` (`id_sujet`, `id_question`, `question`) VALUES
(36, '36.3', 'Est-ce que l\'entreprise a mis a en place une hiérarchie de rapports sur la performance de la gestion d\'actifs adéqutate par rapport aux besoins et décisions qui sont gérés?'),
(36, '36.4', 'Est-ce que l\'entreprise a mis en place un ensemble des mesures de performance de ses processus de gestion d\'actifs qui soient avancées ou retardées?'),
(36, '36.5', 'Est-ce que l\'entreprise évalue ses processus pour la gestion des risques et des opportunités liés au Système de Gestion d\'Actifs et fait des rapports sur leur efficacité?'),
(36, '36.6', 'Est-ce que l\'entreprise revise régulièrement le suivi, la mesure, l\'analyse et l\'évaluation du Système de Gestion d\'Actifs et les implémente quand reputé bénéfique?'),
(36, '36.7', 'Est-ce que l\'entreprise tient un registre du suivi, de l\'analyse et de l\'évaluation du Système de Gestion d\'Actifs?'),
(37, '37.1', 'Est-ce que l\'entreprise possède des politiques et des processus d\'audit bien documentés?'),
(37, '37.2', 'Est-ce que l\'entreprise effectue des audits internes selon son programme, afin de confirmer que le Système de Gestion d\'Actifs satisfait:\na) Les exigences de l\'entreprise\nb) Les exigences de la norme ISO55001'),
(37, '37.3', 'Est-ce que l\'organisation détermine la fréquence et le contenu de l\'audit interne de son Système de Gestion d\'Actifs?'),
(37, '37.4', 'Est-ce que l\'entreprise fait des revues périodiques et développe continuellement le programme d\'audit afin de refléter l\'importance relative des processus de l\'organisation et les résultats des audits antérieurs?'),
(37, '37.5', 'Est-ce que l\'entreprise démontre que les audits sont objectifs et impartiaux en:\na) Utilisant des auditeurs compétents, indépendants de ceux qui sont directement responsables de l\'activité qui est examinée\nb) Conduisant les audits selon les définitions du scope et des critères d\'audit\nc) Conservant les dossiers des résultats d\'audit ?'),
(37, '37.6', 'Est-ce que les conclusions de l\'audit sont rapportées à un niveau de gestion approprié?'),
(37, '37.7', 'Est-ce que la Haute Direction fait la revue du Système de Gestion d\'Actifs afin de s\'assurer de sa pertinence, son adéquation et son efficacité en:\na) Conduisant les revues selon un calendrier établi\nb) Prenant en compte le statut des actions issues des revues de direction antérieures\nc) Évaluant l\'évolution des problèmes qui sont pertinents pour la Gestion d\'Actifs\nd) Évaluant l\'analyse des tendances de non conformité et actions correctives, les résultats découlant du suivi et des mesures ainsi que les rapports d\'audit\ne) Recevant les rapports sur les activités de la Gestion d\'Actifs\nf) Considérant les opportunités d\'amélioration\ng) Considérant les changements dans les profiles de risques et d\'opportunités\nh)Décidant des actions d\'amélioration continue et de changements requis pour le  Système de Gestion d\'Actifs?'),
(37, '37.8', 'Est-ce que l\'organisation produit et conserve les dossiers des revue de la Haute Direction?'),
(38, '38.1', 'Est-ce que l\'entreprise détermine les données financières et techniques et les informations qui sont nécessaires pour faciliter la gestion de ses actifs?'),
(38, '38.2', 'Est-ce que l\'entreprise s\'assure que les données et les informations sont pertinentes pour la réalisation des objectifs de l\'entreprise?'),
(38, '38.3', 'Est-ce que l\'entreprise pense que les données et les informations facilitent la satisfaction de:\na) Ses obligations légales et règlémentaires\nb) Les exigences des parties prenantes\nc) Les besoins de prise de décisions éclairées par rapport à la Gestion d\'Actifs?'),
(38, '38.4', 'Est-ce que l\'entreprise a un régistre d\'évaluation d\'Actifs ainsi qu\'une méthodologie d\'évaluation?'),
(38, '38.5', 'Est-ce que l\'entreprise a des processus documentés pour prendre en compte les coûts d\'investissement pour la construction?'),
(38, '38.6', 'Es-ce que l\'entreprise révise les données et les informations financières et techniques périodiquement dans la perspective de développer des mesures qualitatives et quantitatives pour analyse?'),
(38, '38.7', 'Est-ce que l\'entreprise implémente les changements à la mesure,  la collecte et l\'analyse des données et des informations techniques et financières pour supporter l\'évaluation des actifs là ou ce serait bénéfique?'),
(39, '39.1', 'Est-ce que l\'entreprise identifie les personnes et les organisations qui:\na) Peuvent avoir un impacct sur le Système de Gestion d\'Actifs\nb) Qui peuvent subir les conséquences des actions et décisions découlant du Système de Gestion d\'Actifs\nc) Peuvent avoir la perception qu\'ils pourraient être affectés par les actions et les décisions découlant du Système de Gestion d\'Actifs?'),
(39, '39.2', 'Est-ce que l\'entreprise a developpé et implémenté une stratégie  pour engager les parties prenantes. Ceci inclut la détermination de:\na) Les besoins et attentes des parties prenantes par rapport à la Gestion d\'Actifs,\nb) Les critères qui doivent être pris en compte lors de la prise de décision sur la Gestion d\'Actifs\nc) L\'ensemble des informations sur la Gestion d\'Actifs qui sont requises pour supporter la relation avec les parties prenantes\nd) Les arrangements nécessaires pour rapporter les informations aux parties prenantes?'),
(39, '39.3', 'Est-ce que le processus d\'identification des parties prenantes et la stratégie d\'engagement sont alignés avec le Système de Gestion d\'Actifs et prend en compte les contextes internes et externes de l\'organisation?'),
(39, '39.4', 'Est-ce que le processus d\'identification des parties prenantes et la stratégie d\'engagement sont revues périodiquement pour tenir compte des changements aux conditions internes et externes et sont mis à jour afin de s\'assurer qu\'ils demeurent efficaces?'),
(39, '39.5', 'Est-ce que la consultion avec et la présentation des rapports aux parties prenantes sont conduites à une fréquence et sous des formats et à un niveau de langue et de détail approprié aux besoins des parties prenantes?'),
(4, '4.1', 'Est-ce que le processus de planification stratégique pour atteindre les objectifs de la gestion d\'actifs est intégré avec les autres activités de planification de l\'entreprise?'),
(4, '4.2', 'Est-ce que le processus de planification stratégique est aligné à la planification globale de l\'entreprise et supporte celle-ci?'),
(4, '4.3', 'Est-ce que le processus de planification stratégique prend en compte les résultats des prévisions relatives à l\'offre et la demande?'),
(4, '4.4', 'Est-ce que le processus de planification stratégique offre une approche structurée et un cadre pour le développement des plans de gestion d\'actifs pour les systèmes d\'actifs et les types d\'actifs?'),
(4, '4.5', 'Est-ce que le processus de planification stratégique et le processus de planification de la gestion d\'actifs sont effectués de manière itérative en combining la direction de haut en bas et de bas en haut avec les besoins des actifs?'),
(5, '5.1', 'Est-ce qu\'il existe les plans de gestion d\'actifs documentés pour les systèmes d\'actifs et les actifs critiques en lien avec le plan stratégique de gestion d\'actifs (SAMP) afin de réaliser les objectifs de la gestion d\'actifs?'),
(5, '5.10', 'Est-ce que les plans de gestion d\'actifs sont revus et mis à jour régulièrement selon une fréquence de revue bien spécifiée pour tenir compte de leur caractère dynamique?'),
(5, '5.2', 'Est-ce que les plans de gestion d\'actifs prennent en compte les risques and les opportunités incluant comme ceux-ci pourraient changer dans le temps?'),
(5, '5.3', 'Est-ce que les plans de gestion d\'actifs prennent en compte les exigences en dehors du système de gestion d\'actifs et considèrent les implications financières et non-financières des plans?'),
(5, '5.4', 'Est-ce que les plans de gestion d\'actifs prennent en compte l\'analyse de la demande?'),
(5, '5.5', 'Est-ce que les plans de gestion d\'actifs cherchent à adresser les opportunités d\'amélioration continue?'),
(5, '5.6', 'Est-ce que l\' activité de planification de la gestion d\'actifs est intégrée à d\'autres activités de planification telles que les TI, les ressources humaines, la planification financière, les inventaires, les approvisionnements?'),
(5, '5.7', 'Est-ce que les plans de gestion d\'actifs détaillent les processus et les méthodes de gestion des actifs le long de leur cycle de vie?'),
(5, '5.8', 'Est-ce que les plans de gestion d\'actifs incluent les activités et leurs échéances, les ressources à utiliser, les rôles et responsabilités, les risques/opportunités et les résultats/performances attendues de l\'exécution de ces plans?'),
(5, '5.9', 'Est-ce que les activités du plan de gestion des actifs sont priorisées sur la base de la méthode et du critère de décision convenus au niveau de l\'entreprise et documentés dans le plan stratégique de gestion d\'actifs (SAMP).'),
(6, '6.1', 'Est-ce que la prise de décision pour les investissements en capital suit les critères de prise de décision de l\'entreprise pour la gestion des actifs tels que convenus avec les parties prenantes?'),
(6, '6.2', 'Est-ce que les processus et méthodes pour la prise de décision pour les investissements en capital sont documentés et sont bien alignés avec la politique de gestion d\'actifs, les objectifs de la gestion d\"actifs ainsi que le plan stratégique de gestion d\'actifs (SAMP)?'),
(6, '6.3', 'Est-ce que les alternatives crédibles sont prises en compte, incluant des interventions ne nécessitant pas d\'investissements en immobilisations, au niveau des actifs individuels, des groupements d\'actifs et des systèmes d\'actifs ?'),
(6, '6.4', 'Est-ce que les alternatives sont évaluées en considérant les critères de décision convenus, les contraintes et les exigences de conformité obligatoires, de même qu\'en considérant l\'impact des décisions à travers toutes les étapes du cycle de vie et le besoin de cet actif pour l\'organisation sur le long terme?'),
(6, '6.5', 'Est-ce qu\'un régistre des décisions prises est maintenu?'),
(6, '6.6', 'Est-ce que les risques ainsi que leur évolution dans le temps sont pris en compte dans l\'évaluation?'),
(6, '6.7', 'Est-ce que les processus et méthodes sont systématiquement appliqués sur tous les investissements en immobilisations, incluant les nouvelles constructions/fabrications, les remplacements et les remises à neuf (Avec extension de durée de vie), les registres sont tenus afin de démontrer la conformité, les processus considèrent la nature et la criticité des actifs et sont proportionné aux risques et opportunités?'),
(6, '6.8', 'Est-ce que les méthodes et processus sont revus pour leur efficacité à atteindre les objectifs de la gestion d\'actifs et sont mis à jour au besoin?'),
(7, '7.1', 'Est-ce que les stratégies liées à l\'exploitation et à la maintenance sont déterminées en utilisant les critères adoptés pour l\'entreprise sur les prises de décision sur la gestion d\'actifs?'),
(7, '7.2', 'Est-ce que les méthodes et processus pour déterminer les stratégies de l\'exploitation et de la maintenance sont documentés et sont alignés à la politique de gestion d\'actifs, aux objectifs de la gestion d\'actifs et au plan stratégique de gestion d\'actifs (SAMP)?'),
(7, '7.3', 'Est-ce que les processus et les méthodes sont systématiquement appliqués à travers tous les actifs et l\'exploitation et tiennent compte de la criticité des actifs, la durée de vie restante des actifs, les niveaux de service requis, les interventions en immobilisations (Capital) prévues et il existe un bon équilibre entre la maintenance préventive et corrective, et les informations sont consignées pour attester de la conformité?'),
(7, '7.4', 'Est-ce que les risques ainsi que leur évolution dans le temps sont pris en compte dans l\'évaluation des stratégies de Maintenance et de l\'exploitation?'),
(7, '7.5', 'Est-ce que l\'historique de la performance des actifs, leur état, le  coût de leur maintenance sont analysés régulièrement pour vérifier l\'efficacité des stratégies de maintenance et d\'exploitation et identifier éventuellement les besoins d\'amélioration?'),
(7, '7.6', 'Est-ce que les processus sont revus afin de s\'assurer que quand c\'est approprié, les interventions en capital (immobilisations) sont initiées au moment opportun et que ces interventions passent à travers le processus de prise de décision pour les investissements en immobilisations (Capital)?'),
(8, '8.1', 'Est-ce que les critères liés à la valeur du cycle de vie sont déterminés et documentés en utilisant les critères de l\'entreprise pour la prise de décision en matière de gestion d\'actifs convenus avec les parties prenantes?'),
(8, '8.2', 'Est-ce que les méthodes et les processus liés aux activités du cycle de vie sont documentés là ou c\'est nécessaire et sont alignés avec la politique de gestion d\'actifs, les objectifs de la gestion d\'actifs, le plan stratégique de gestion d\'actifs, de même que les méthodes et les critères utilisés pour les prises de décision pour les investissements en immobilisation ainsi que les prises de décision pour l\'exploitation et la maintenance?'),
(8, '8.3', 'Est-ce que les processus et les méthodes liés aux activités du cycle de vie sont systématiquement appliqués à travers tous les actifs et toutes les opérations afin de déterminer la meilleure combinaison d\'activités d\'acquisition/création, d\'utilisation, de maintenance, d\'amélioration, de renouvellement et de retrait des actifs à travers leur cycle de vie (Stratégies du Cycle de Vie)?\nEst-ce que les registres sont maintenus afin de démontrer la conformité?'),
(8, '8.4', 'Est-ce que le risque est pris en compte dans la détermination des stratégies du Cycle de Vie, en prenant aussi en compte l\'évolution du risque?'),
(8, '8.5', 'Est-ce que l\'organisation améliore continuellement son approche de quantification, de modélisation, de prévision, de mesure et d\'amélioration des activités liées au cycle de vie?'),
(9, '9.1', 'Est-ce que votre orgnisation détermine les rôles requis pour la gestion d\'actifs, le type, le niveau des ressources humaines requises pour établir, implémenter, maintenir et améliorer son système de gestion d\'actifs?'),
(9, '9.2', 'Est-ce que la stratégie relative aux ressources est alignée aux politiques et stratégies obligatoires et pertinentes pour l\'entreprise?'),
(9, '9.3', 'Est-ce que l\'entreprise détermine le personnel, les immobilisations corporelles (usine, équipements), outils et matériels nécessaires pour l\'atteinte des objectifs de la gestion d\'actifs et pour l\'implémentation des activités spécifiées dans le plan de gestion d\'actifs, incluant les activités requises pour supporter ou faciliter ces plans?'),
(9, '9.4', 'Est-ce que l\'organisation développe sa stratégie relative aux ressources  de manière à se procurer les ressources requises y compris à travers des recrutements, des partenariats, de la sous-traitance au besoin?'),
(9, '9.5', 'Est-ce que la stratégie relative aux ressources est alignée au plan stratégique de gestion d\'actifs (SAMP) et prend en compte la stratégie long terme de l\'entreprise, la demande de la clientèle pour les services et produits, la disponibilité des compétencess sur le marché et le niveau de compétition dans la chaîne d\'approvisionnement?'),
(9, '9.6', 'Est-ce que la stratégie relative aux ressources prend en compte les coûts et risques, incluant les risques liés à la viabilité de la stratégie sur le long terme?'),
(9, '9.7', 'Est-ce que la stratégie relative aux ressources est communiquée à toutes les fonctions de l\'entreprise y compris les ressources humaines, les appros, etc et est utilisé pour développer les plans des ressources?'),
(9, '9.8', 'Est-ce que la stratégie liée aux ressources est revue périodiquement par rapport aux conditions du marché et mise à jour pour s\'assurer qu\'elle demeure effective?');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_reponse` int(10) NOT NULL,
  `id_formulaire` int(10) DEFAULT NULL,
  `id_question` varchar(10) DEFAULT NULL,
  `oui_non` varchar(6) DEFAULT NULL,
  `fichier` varchar(30) NOT NULL DEFAULT 'non',
  `commentaire` varchar(400) DEFAULT NULL,
  `commentaire_admin` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id_reponse`, `id_formulaire`, `id_question`, `oui_non`, `fichier`, `commentaire`, `commentaire_admin`) VALUES
(1, 1, '1.1', 'oui', 'fi1.1_26_zeukengc.jpg', 'rere', 'nouveau commentaire'),
(2, 1, '1.2', 'oui', 'non', 'rere', 'nouveau commentaire'),
(3, 1, '1.3', 'oui', 'non', 'rere', 'nouveau commentaire'),
(4, 1, '1.4', 'oui', 'non', 'rere', 'nouveau commentaire'),
(5, 1, '1.5', 'oui', 'non', 'rere', 'nouveau commentaire'),
(6, 1, '1.6', 'oui', 'non', 'rere', 'nouveau commentaire'),
(7, 1, '1.7', 'oui', 'non', 'rere', 'nouveau commentaire'),
(8, 1, '1.8', 'oui', 'non', 'rere', 'nouveau commentaire'),
(9, 2, '2.1', 'non', 'non', 'rere', 'rfr'),
(10, 2, '2.2', 'oui', 'non', 'rere', 'rfr'),
(11, 2, '2.3', 'non', 'non', 'rere', 'rfr'),
(12, 2, '2.4', 'non', 'non', 'rere', 'rfr'),
(13, 2, '2.5', 'non', 'non', 'rere', 'rfr'),
(14, 2, '2.6', 'oui', 'non', 'rere', 'rfr'),
(15, 2, '2.7', 'non', 'non', 'rere', 'rfr'),
(16, 2, '2.8', 'non', 'non', 'rere', 'rfr'),
(17, 2, '2.9', 'non', 'non', 'rere', 'rfr'),
(18, 2, '2.10', 'oui', 'non', 'rere', 'rfr'),
(19, 2, '2.11', 'non', 'non', 'rere', 'rfr'),
(20, 2, '2.12', 'oui', 'non', 'rere', 'rfr'),
(21, 3, '3.1', 'non', 'non', 'rere', 'yo les bros'),
(22, 3, '3.2', 'non', 'non', 'rere', 'yo les bros'),
(23, 3, '3.3', 'oui', 'non', 'rere', 'yo les bros'),
(24, 3, '3.4', 'non', 'non', 'rere', 'yo les bros'),
(25, 3, '3.5', 'non', 'non', 'rere', 'yo les bros'),
(26, 3, '3.6', 'oui', 'non', 'rere', 'yo les bros'),
(27, 33, '33.1', 'non', 'non', 'rere', 'rrrr'),
(28, 33, '33.2', 'non', 'non', 'rere', 'rrrr'),
(29, 33, '33.3', 'non', 'non', 'rere', 'rrrr'),
(30, 35, '35.1', 'non', 'non', 'rere', 'fffffff'),
(31, 35, '35.2', 'non', 'non', 'rere', 'fffffff'),
(32, 35, '35.3', 'non', 'non', 'rere', 'fffffff'),
(33, 35, '35.4', 'non', 'non', 'rere', 'fffffff'),
(34, 35, '35.5', 'non', 'non', 'rere', 'fffffff'),
(35, 35, '35.6', 'non', 'non', 'rere', 'fffffff'),
(36, 35, '35.7', 'non', 'non', 'rere', 'fffffff'),
(37, 13, '13.1', 'non', 'non', 'rere', 'efdwefrefw'),
(38, 13, '13.2', 'non', 'non', 'rere', 'efdwefrefw'),
(39, 13, '13.3', 'non', 'non', 'rere', 'efdwefrefw'),
(40, 13, '13.4', 'non', 'non', 'rere', 'efdwefrefw'),
(41, 13, '13.5', 'non', 'non', 'rere', 'efdwefrefw'),
(42, 13, '13.6', 'oui', 'non', 'rere', 'efdwefrefw'),
(43, 13, '13.7', 'non', 'non', 'rere', 'efdwefrefw'),
(44, 4, '4.1', 'non', 'non', 'rere', ''),
(45, 4, '4.2', 'non', 'non', 'rere', ''),
(46, 4, '4.3', 'non', 'non', 'rere', ''),
(47, 4, '4.4', 'non', 'non', 'rere', ''),
(48, 4, '4.5', 'non', 'non', 'rere', ''),
(49, 7, '7.1', 'non', 'non', 'rere', ''),
(50, 7, '7.2', 'non', 'non', 'rere', ''),
(51, 7, '7.3', 'non', 'non', 'rere', ''),
(52, 7, '7.4', 'non', 'non', 'rere', ''),
(53, 7, '7.5', 'non', 'non', 'rere', ''),
(54, 7, '7.6', 'non', 'non', 'rere', ''),
(55, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(56, 5, '5.2', 'non', 'non', 'rere', ''),
(57, 5, '5.3', 'non', 'non', 'rere', ''),
(58, 5, '5.4', 'oui', 'non', 'rere', ''),
(59, 5, '5.5', 'non', 'non', 'rere', ''),
(60, 5, '5.6', 'non', 'non', 'rere', ''),
(61, 5, '5.7', 'non', 'non', 'rere', ''),
(62, 5, '5.8', 'oui', 'non', 'rere', ''),
(63, 5, '5.9', 'oui', 'non', 'rere', ''),
(64, 5, '5.10', 'oui', 'non', 'rere', ''),
(65, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(66, 5, '5.2', 'non', 'non', 'rere', ''),
(67, 5, '5.3', 'non', 'non', 'rere', ''),
(68, 5, '5.4', 'oui', 'non', 'rere', ''),
(69, 5, '5.5', 'non', 'non', 'rere', ''),
(70, 5, '5.6', 'non', 'non', 'rere', ''),
(71, 5, '5.7', 'non', 'non', 'rere', ''),
(72, 5, '5.8', 'oui', 'non', 'rere', ''),
(73, 5, '5.9', 'oui', 'non', 'rere', ''),
(74, 5, '5.10', 'oui', 'non', 'rere', ''),
(75, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(76, 5, '5.2', 'non', 'non', 'rere', ''),
(77, 5, '5.3', 'non', 'non', 'rere', ''),
(78, 5, '5.4', 'oui', 'non', 'rere', ''),
(79, 5, '5.5', 'non', 'non', 'rere', ''),
(80, 5, '5.6', 'non', 'non', 'rere', ''),
(81, 5, '5.7', 'non', 'non', 'rere', ''),
(82, 5, '5.8', 'oui', 'non', 'rere', ''),
(83, 5, '5.9', 'oui', 'non', 'rere', ''),
(84, 5, '5.10', 'oui', 'non', 'rere', ''),
(85, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(86, 5, '5.2', 'non', 'non', 'rere', ''),
(87, 5, '5.3', 'non', 'non', 'rere', ''),
(88, 5, '5.4', 'oui', 'non', 'rere', ''),
(89, 5, '5.5', 'non', 'non', 'rere', ''),
(90, 5, '5.6', 'non', 'non', 'rere', ''),
(91, 5, '5.7', 'non', 'non', 'rere', ''),
(92, 5, '5.8', 'oui', 'non', 'rere', ''),
(93, 5, '5.9', 'oui', 'non', 'rere', ''),
(94, 5, '5.10', 'oui', 'non', 'rere', ''),
(95, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(96, 5, '5.2', 'non', 'non', 'rere', ''),
(97, 5, '5.3', 'non', 'non', 'rere', ''),
(98, 5, '5.4', 'oui', 'non', 'rere', ''),
(99, 5, '5.5', 'non', 'non', 'rere', ''),
(100, 5, '5.6', 'non', 'non', 'rere', ''),
(101, 5, '5.7', 'non', 'non', 'rere', ''),
(102, 5, '5.8', 'oui', 'non', 'rere', ''),
(103, 5, '5.9', 'oui', 'non', 'rere', ''),
(104, 5, '5.10', 'oui', 'non', 'rere', ''),
(105, 5, '5.1', 'oui', 'fi5.1_26_zeukengc.jpg', 'rere', ''),
(106, 5, '5.2', 'non', 'non', 'rere', ''),
(107, 5, '5.3', 'non', 'non', 'rere', ''),
(108, 5, '5.4', 'oui', 'non', 'rere', ''),
(109, 5, '5.5', 'non', 'non', 'rere', ''),
(110, 5, '5.6', 'non', 'non', 'rere', ''),
(111, 5, '5.7', 'non', 'non', 'rere', ''),
(112, 5, '5.8', 'oui', 'non', 'rere', ''),
(113, 5, '5.9', 'oui', 'non', 'rere', ''),
(114, 5, '5.10', 'oui', 'non', 'rere', '');

-- --------------------------------------------------------

--
-- Structure de la table `sujet_descript`
--

CREATE TABLE `sujet_descript` (
  `id` int(5) NOT NULL,
  `sujet` varchar(4000) NOT NULL,
  `groupe` int(4) NOT NULL,
  `description` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sujet_descript`
--

INSERT INTO `sujet_descript` (`id`, `sujet`, `groupe`, `description`) VALUES
(1, 'Politique de Gestion d\'Actifs', 1, '\nCe sont les principes, les lignes directrices qui découlent du plan stratégique de l\'entreprise, qui sont cohérents avec celui-ci et offrent un cadre pour le développement de la stratégie de gestion d\'actifs et la détermination des objectifs de la gestion d\'actifs. '),
(2, 'Stratégie et objectifs de la gestion d\'actifs', 1, 'Le plan stratégique de gestion d\'acrifs d\'une organisation est utilisé pour atteindre les objectifs de l\'entreprise.'),
(3, 'Analyse de la demande', 1, 'Avez-vous un des processus d\'analyse de la demande?\n(Ce sont les processus qu\'une entreprise utilise pour à la fois évaluer et influencer la sollicitation de ses actifs ou le niveau de service qui peut être obtenu à partir de l\'utilisation de ses actifs).'),
(4, 'Planification Stratégique', 1, 'Effectuez-vous la planification stratégique de vos actifs?\n(Ce sont les processus qu\'une entreprise utilise pour effectuer la planification stratégique de sa gestion d\'actifs.)'),
(5, 'Planification de la Gestion d\'Actifs', 1, 'Faites-vous de la planification de la gestion d\'Actifs?\n(Ce sont les activités pour développer les plans de gestion d\'actifs qui spécifient de manière détaillée les activités et les ressources, les responsabilités et les echéanciers et les risques associés à l\'atteinte des objectifs de la gestion d\'actifs.)'),
(6, 'Prise de décision pour les investissements en capital (immobilisations)', 2, 'Les processus et décision pour évaluer et analyser les scénarios de décision liés aux investissement en capital d\'une organisation. Ces processus et décisions peuvent être relatives aux nouveaux actifs pour l\'organisation (projet greenfield) et/ou le remplacement des actifs en fin de vie (Capital de maintien).'),
(7, 'Prise de décision concernant la maintenance et l\'exploitation', 2, 'Les activités de gestion et processus impliqués dans la détermination des exigences de la Maintenance et de l\'exploitation en soutien aux objectifs et buts de la gestion des acifs.'),
(8, 'Activités liées à la valeur du cycle de vie', 2, 'Ce sont les activités menées par une organisation pour trouver le meilleur équilibre entre les coûts et bénéfices liés aux interventions de renouvellement, de maintenance, de révision et de retrait.'),
(9, 'Stratégie relative aux ressources', 2, 'Détermination et documentation des activités et processus à effectuer par l\'entreprise afin de faire l\'acquisition et l\'utilisation du personnel, des équipements, des outils, et du matériel pour l\'atteinte des objectifs de la gestion d\'actifs et  la mise en oeuvre des plans de gestion d\'actifs.'),
(10, 'Stratégie des différents types d\'arrêts', 2, '\nLes activités entreprises par une organisation pour développer une stratégie pour les différents types d\'arrêts.'),
(11, 'Normes Techniques & Règlementation', 3, 'Est-ce que l\'entreprise a les processus en place pour s\'assurer que ses activités de gestion d\'actifs sont conformes aux différents normes techniques et réglémentation pertinentes?'),
(12, 'Création & Acquisition d\'actifs', 3, 'Est-ce que l\'entreprise a des processus pour la création, l\'acquisition, l\'installation et la mise en service des actifs?'),
(13, 'Ingénierie des Systèmes', 3, 'Une approche collaborative et interdisciplinaire pour établir, faire évoluer et vérifier un système bien dimensionné qui satisfait les attentes du client et est accepté par le public.'),
(14, 'Gestion de la Configuration\n', 3, 'Un processus de gestion pour établir et maintenir la cohérence des attributs physiques et fonctionnels d\'un produit avec ses informations de conception et opérationnelles au cours de sa durée de vie.'),
(15, 'Mise en Oeuvre de Maintenance ', 3, 'Gestion des activités de maintenance incluant à la fois les méthodologies de maintenance préventive et de maintenance corrective.'),
(16, 'Ingénierie de la Fiabilité', 3, 'C\'est le processus qui permet de s\'assurer qu\'une composante fonctionne à une performance définie, pendant une période définie et dans un environnement défini.'),
(17, 'Exploitation des actifs', 3, 'C\'est le processus utilisé par une organisation pour exploiter ses actifs afin de réaliser ses objectifs d\'entreprise.'),
(18, 'Gestion des Ressources', 3, 'Implémentation de la stratégie des ressources pour gérer l\'utilisation des fonds, du personnel, des équipements, des outils et du matériel dans l\'exécution des activités de la gestion des actifs.'),
(19, 'Gestion des arrêts', 3, 'An organisation’s processes for identification, planning, scheduling, execution and control of work related to shutdowns or outages'),
(20, 'Réactions aux défaillances et aux incidents', 3, 'Réactions aux défaillances et incidents d\'une façon systématique, incluant la détection et l\'identification des incidents, l\'analyse des défaillances, l\'utilisation des réponses standards, les réparations temporaires et permanentes.'),
(21, 'Démantèlement et retrait d\'actifs', 3, 'Le processus utilisé par une entreprise pour le démantèlement et le retrait des actifs due à leur âge, le changement de leur performance et les exigences par rapport à la capacité.'),
(22, 'Stratégie d\'information sur les actifs', 4, 'L\'approche stratégique pour la définition, la collecte, la gestion, le reporting et la gouvernance générale de l\'information sur les actifs nécessaire pour l\'implémentation de la stratégie de gestion d\'actifs et des objectifs d\'une entreprise.'),
(23, 'Normes d\'information sur les actifs', 4, 'La spécification d\'une structure et d\'un format cohérents pour la collecte, le stockage des informations sur les actifs et pour le rapport sur la qualité et l\'exactitude de l\'information sur les actifs.'),
(24, 'Systèmes d\'information sur les actifs', 4, 'Ce sont les systèmes d\'information sur les actifs qu\'une entreprise a mis en place pour supporter les activités de la gestion d\'actifs et les processus de prise de décision en lien avec la stratégie de l\'information sur les actifs.'),
(25, 'Gestion des données et de l\'information', 4, 'Ce sont les processus de gestion et de gouvernance des données et de l\'information contenus dans les systèmes d\'information d\'actifs de l\'entreprise.'),
(26, 'Achat et Chaîne d\'approvisionnement', 5, 'Ce sont les processus utilisés par une organisation pour s\'assurer que toutes activités de gestion d\'actifs qui sont sous-traitées sont alignées aux objectifs de la gestion d\'actifs de l\'entreprise et pour faire le suivi des résultats de ces activités par rapport à ces objectifs-là.'),
(27, 'Leadership en matière de gestion d\'actifs', 5, 'Le leadership d\'une entreprise qui est requis pour promouvoir une approche  de la gestion des actifs, basée sur le cycle de vie complet afin de réaliser les objectifs de l\'entreprise et ceux de la gestion d\'actifs. '),
(28, 'Structure Organisationnelle', 5, 'Structure Organisationnelle en terme de sa capacité à réaliser les objectifs de l\'entreprises et ceux de la gestion d\'actifs.'),
(29, 'Culture de l\'organisation', 5, 'La culture de l\'organisation en terme de sa capacité à réaliser les objectifs de l\'entreprise et ceux de la gestion d\'actifs.'),
(30, 'Gestion des Compétences', 5, 'Les processus utilisés par une organisation pour systématiquement développer et maintenir une base de personnes compétentes et motivées pour réaliser les objectifs de la Gestion d\'Actifs, y compris les arrangements pour gérer les compétences aussi bien en salle de réunion qu\'au lieu de travail.'),
(31, 'Évaluation et gestion des risques', 6, 'Ce sont les politiques, les processus qui permettent d\'identifier, de quantifier et d\'atténuer les risques et exploiter les opportunités.'),
(32, 'Plan d\'urgence & Analyse de la Résilience', 6, 'Ce sont les processus et les systèmes mis en place par une entreprise pour s\'assurer qu\'elle est capable de continuer soit d\'exploiter ses actifs pour fournir le niveau de service requis si jamais il y a un évènement qui a un impact négatif  ou pour préserver la sécurité ou l\'intégrité des actifs (qu\'ils soient en exploitation ou non).'),
(33, 'Développement Durable', 6, 'Ce sont les processus interdisciplinaires et collaboratifs utilisés par une entreprise pour assurer une approche sur le temps et équilibrée par rapport aux activités économiques, la responsabilité environnementale et le progrès social pour s\'assurer que toutes les activités sont durables.'),
(34, 'Gestion du Changement', 6, 'Ce sont les processus d\'une entreprise pour l\'identification, l\'évaluation, l\'implémentation et la communication des changements par rapport aux processus, aux personnes et aux actifs.'),
(35, 'Performance & État des Actifs', 6, 'Ce sont les processus et mesures utilisés par une entreprise pour évaluer la performance et l\'état de ses actifs en utilisant les indicateurs de performance..'),
(36, 'Suivi du Système de Gestion d\'Actifs', 6, 'Ce sont les processus et les mesures utilisés par l\'entreprise pour évaluer la performance et l\'état de son Système de Gestion d\'Actifs?'),
(37, 'Revue de Direction, Audit et Garantie', 6, 'Ce sont les processus d\'une entreprise pour la revue et l\'audit de l\'efficacité de ses processus de gestion d\'actifs et de son système de gestion d\'actifs.'),
(38, 'Coût et Évaluation des Actifs', 6, 'Ce sont les processus d\'une entreprise lui permettant de définir et tenir compte des coûts unitaires de la construction, la maintenance, le renouvellement et les méthodes utilisées par l\'entreprise pour l\'évaluation et l\'amortissement de ses actifs.'),
(39, 'Engagement des Parties Prenantes', 6, 'Ce sont les méthodes utilisées par une entreprise pour engager ses parties prenantes.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `sexe` varchar(7) DEFAULT NULL,
  `statut` varchar(10) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `sexe`, `statut`, `username`, `email`, `password`) VALUES
(1, 'on', 'admin', 'zeukeng', 'mbombom42@gmail.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1'),
(4, 'femme', 'utilisateu', 'nancy njetejie', 'nancy@gmail.com', '1d78b370ad96e7a8091888d902360187bdea87ab6a4af003ec63c791894513ec'),
(5, 'homme', 'utilisateu', 'njetejie', 'njetejie.florent21@myiuc.com', 'd74ff0ee8da3b9806b18c877dbf29bbde50b5bd8e4dad7a3a725000feb82e8f1');

-- --------------------------------------------------------

--
-- Structure de la table `utlisateur`
--

CREATE TABLE `utlisateur` (
  `id_util` int(100) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(10) DEFAULT NULL,
  `mot_passe` varchar(20) DEFAULT NULL,
  `entreprise` varchar(30) DEFAULT NULL,
  `profil` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `contact` int(10) DEFAULT NULL,
  `etat` varchar(10) NOT NULL DEFAULT 'actif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utlisateur`
--

INSERT INTO `utlisateur` (`id_util`, `nom`, `prenom`, `mot_passe`, `entreprise`, `profil`, `email`, `contact`, `etat`) VALUES
(19, 'ROOT', 'florent@gm', 'ROOTULTIME', '', 'admin', 'florent@gmail.com', 2147483647, 'actif'),
(26, 'zeukeng', 'florent', 'LOGBESSOU1', 'DEV12345', 'utilisateur', 'florent@gmail.com', 654572463, 'Actif');

-- --------------------------------------------------------

--
-- Structure de la vue `lesouis`
--
DROP TABLE IF EXISTS `lesouis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lesouis`  AS SELECT `sujet_descript`.`id` AS `id`, `sujet_descript`.`sujet` AS `sujet`, count(`reponse`.`oui_non`) AS `nbr` FROM ((`reponse` join `sujet_descript`) join `question`) WHERE `reponse`.`oui_non` = 'oui' AND `sujet_descript`.`id` = `question`.`id_sujet` AND `question`.`id_question` = `reponse`.`id_question` GROUP BY `sujet_descript`.`id``id`  ;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `formulaire`
--
ALTER TABLE `formulaire`
  ADD PRIMARY KEY (`id_sr`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id_groupe`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `id_sujet` (`id_sujet`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_reponse`);

--
-- Index pour la table `sujet_descript`
--
ALTER TABLE `sujet_descript`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utlisateur`
--
ALTER TABLE `utlisateur`
  ADD PRIMARY KEY (`id_util`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `formulaire`
--
ALTER TABLE `formulaire`
  MODIFY `id_sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id_groupe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_reponse` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT pour la table `sujet_descript`
--
ALTER TABLE `sujet_descript`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `utlisateur`
--
ALTER TABLE `utlisateur`
  MODIFY `id_util` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_sujet`) REFERENCES `sujet_descript` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
