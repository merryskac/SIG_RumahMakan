-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2022 at 03:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gis_apotik`
--

-- --------------------------------------------------------

--
-- Table structure for table `apotik`
--

CREATE TABLE `apotik` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apotik`
--

INSERT INTO `apotik` (`id`, `nama`, `pemilik`, `alamat`, `kecamatan`, `latitude`, `longitude`) VALUES
(3, 'Apotek Nurul', 'Nurul', 'Jl. Trans Sulawesi ', 'Mantikulore', '-0.8345718851503595', '119.88272410578338'),
(4, 'Apotek Berkat', 'Rizky', 'Jl.RE Martadinata', 'Mantikulore', '-0.8510826502708619', '119.88408633373304'),
(5, 'Apotek Kimia Farma', 'Ima', 'Jl.RE Martadinata', 'Mantikulore', '-0.8566205410686023', '119.8840119586963'),
(7, 'Apotek Kita', 'Ima', 'Jl. Roviga', 'Mantikulore', '-0.8465199759030573', '119.88948489236019'),
(8, 'Apotek Nuhra Farma', 'Nuhra', 'Jl.RE Martadinata', 'Mantikulore', '-0.8434644908773986', ' 119.8827661205892'),
(9, 'Apotek Mitra Abadi 2', 'Mita', 'Jl.RE Martadinata', 'Mantikulore', '-0.844478157240674', '119.88290328860765'),
(10, 'Apotek Palakuat Tondo', 'Mala', 'Jl.RE Martadinata', 'Mantikulore', '-0.8467397999907613', '119.88294024735528'),
(11, 'Apotek Bella', 'Bella', 'Jl. Yos Sudarso', 'Mantikulore', '-0.8730135139527508', '119.8742581989138'),
(12, 'Apotek Hero Farma', 'Heru', 'Jl. Yos Sudarso', 'Mantikulore', '-0.8777787606050685', '119.87310566214921'),
(13, 'Apotek Pendidikan Tadulako', 'Mila', 'Jl. Untad I BumiRoviga', 'Mantikulore', '-0.8432806498563823', ' 119.8984999451564'),
(14, 'Apotek Winfi Medika', 'Winfi', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7867119430967457', '119.87240167144267'),
(15, 'Apotek Mega Buana', 'Mega', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.788243303675094', '119.87270749730004'),
(16, 'Apotek Subur', 'Sifa', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7885636702165381', ' 119.87295536247457'),
(17, 'Apotek Mamboro Farma', 'Ama', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7900935574081066', '119.87327508305331'),
(18, 'Apotek SWA Farma', 'Zaki', 'Jl. Thalua Konchi', 'Palu Utara', '-0.788694064990951', '119.8695249309348'),
(19, 'Apotek Samudra Farma', 'Sam', 'Jl. Thalua Konchi', 'Palu Utara', '-0.7888772335461041', '119.86912864823407'),
(20, 'Apotek Cici', 'Cici', 'Jl. Cempedak', 'Palu Utara', '-0.7909429555486236', '119.87045838042224'),
(21, 'Apotek Aif Taipa Farma', 'Alif', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7745256042170132', '119.86973478036532'),
(22, 'Apotek Yama Farma', 'Yama', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7493366044939839', '119.86542479887389'),
(23, 'Apotek Saviqa Farma', 'Saviqa', 'Jl. Trans Sulawesi ', 'Palu Utara', '-0.7414653917572133', '119.8636701139769'),
(24, 'Apotek Farmindah 1', 'Firda', 'Jl. Imam Bonjol', 'Palu Barat', '-0.8939513422957124', '119.85795148152323'),
(25, 'Apotek Torayaku', 'Ayu', 'Jl. Gajah Mada', 'Palu Barat', '-0.8956316991892072', '119.86056339922416'),
(27, 'Apotek Mediokta', 'Okta', 'Jl. Jaelangkara', 'Palu Barat', '-0.8938334862555746', ' 119.85490630487922'),
(28, 'Apotek Mitra Farma', 'Sasa', 'Jl. WR Supratman', 'Palu Barat', '-0.8950618531025969', '119.85171131013158'),
(29, 'Apotek Empat Putri', 'Putri', 'Jl. WR Supratman', 'Palu Barat', '-0.8993520768772122', '119.85181254051274'),
(30, 'Apotek Sulinda', 'Linda', 'Jl. Sungai Lewara', 'Palu Barat', '-0.8982662976900162', '119.85234632147348'),
(31, 'Apotek Asrina', 'Rina', 'Jl. Kangkung', 'Palu Barat', '-0.9004365242181773', '119.84860030821966'),
(32, 'Apotek Ummi Farma', 'Ummi', 'Jl. WR Supratman', 'Palu Barat', '-0.8962505143694471', '119.85134126516903'),
(33, 'Apotek Kamila', 'Mila', 'Jl. Imam Bonjol', 'Palu Barat', '-0.8946606544633908', '119.85633647312277'),
(34, 'Apotek Zaenab', 'Zaenab', 'Jl. Datu Adam', 'Palu Barat', '-0.8933504540308327', '119.84753936837349'),
(35, 'Apotek Kurnia', 'Nia', 'Jl. Patimura', 'Palu Selatan', '-0.897151504579896', '119.8682050688217'),
(36, 'Apotek Anugrah', 'Anugrah', 'Jl. Tanjung Dako', 'Palu Selatan', '-0.9027556691389178', ' 119.87913559653092'),
(37, 'Apotek Maluku', 'Nalu', 'Jl. Maluku', 'Palu Selatan', '-0.9036162059326511', '119.87178189933844'),
(38, 'Apotek Geria Farma', 'Geria', 'Jl. Tanjung Manimbaya', 'Palu Selatan', '-0.9078478777007534', ' 119.8796931772169'),
(39, 'Apotek Inna Farma', 'Inna', 'Jl. Emmy Saelan', 'Palu Selatan', '-0.9100635058018761', '119.87617190843224'),
(40, 'Apotek Dewi Farma', 'Dewi', 'Jl. Emmy Saelan', 'Palu Selatan', '-0.9142526759734702', ' 119.87627726247862'),
(41, 'Apotek Kita', 'Dina', 'Jl. Emmy Saelan', 'Palu Selatan', '-0.9170953190751078', '119.87641112613214'),
(42, 'Apotek Zulian', 'Zulian', 'Jl. Juanda', 'Palu Selatan', '-0.897188641140746', ' 119.88063376306319'),
(43, 'Apotek Zohra', 'Zohra', 'Jl. Gn Loli', 'Palu Selatan', '-0.8989023645869466', '119.88057779751935'),
(44, 'Apotek Rajawali', 'Ali', 'Jl. Rajawali', 'Palu Selatan', '-0.8987483531704699', '119.87533243490216'),
(45, 'Apotek Medi Sakti', 'Medi', 'Jl. DR SUharso', 'Palu Timur', '-0.8881937189499087', '119.86734088093196'),
(46, 'Apotek Sahabudin', 'Udin', 'Jl. DR SUharso', 'Palu Timur', '-0.8875423950769622', '119.86740182768567'),
(47, 'Apotek Fatra', 'Fatra', 'Jl. DR SUharso', 'Palu Timur', '-0.8856874905158674', ' 119.86745144180401'),
(48, 'Apotek Metro', 'Azka', 'Jl. Rajamoili', 'Palu Timur', '-0.8886038961297834', '119.86066476864295'),
(49, 'Apotek Ar Razy', 'Razy', 'Jl. Jendral Ahmad Yani', 'Palu Timur', '-0.8847161510745203', '119.87297708752735'),
(50, 'Apotek Sari Farma', 'Sari', 'Jl. Sam Ratulangi', 'Palu Timur', '-0.8853939578207952', ' 119.87131848870241'),
(51, 'Apotek Tjempaka', 'Aka', 'Jl. Gn Tinombala', 'Palu Timur', '-0.8834822161559134', ' 119.87552009041029'),
(52, 'Apotek MMG', 'Ega', 'Jl. Suprapto', 'Palu Timur', '-0.8850421303702346', '119.8756035072396'),
(53, 'Apotek Ravadi', 'Rava', 'Jl. Setia Budi', 'Palu Timur', '-0.8893077240556992', ' 119.87870035511882'),
(54, 'Apotek Minasa Upa', 'Upa', 'Jl. Suprapto', 'Palu Timur', '-0.8905479672077046', '119.87456403393688'),
(55, 'Apotek Bersama', 'Zizi', 'Jl. Pue Bongo', 'Tatanga', '-0.9115504242664485', '119.85635409864331'),
(56, 'Apotek Rahmat', 'Rahmat', 'Jl. Pue Bongo', 'Tatanga', '-0.9173847891881834', ' 119.85660031331045'),
(57, 'Apotek Saudara', 'Ara', 'Jl. Pue Bongo', 'Tatanga', '-0.9228216650293883', '119.8586862708016'),
(58, 'Apotek Dikfah', 'Dikfah', 'Jl. Pue Bongo', 'Tatanga', '-0.9182904996023888', '119.85617855798479'),
(59, 'Apotek Amanah', 'Anah', 'Jl. Sis Aljufri', 'Tatanga', '-0.9066305743280213', '119.8559491433295'),
(60, 'Apotek Minang Frama', 'Inang', 'Jl. Kemiri', 'Tatanga', '-0.9019382184379472', '119.85256901290023'),
(61, 'Apotek Mekarsari', 'Arsi', 'Jl. Kemiri', 'Tatanga', '-0.9033574679293634', '119.85593718719088'),
(62, 'Apotek Bangkalan', 'Bang', 'Jl. Kemiri', 'Tatanga', '-0.9023406691596445', '119.85270101751091'),
(63, 'Apotek Linda Farma', 'Linda', 'Jl. WR Supratman', 'Tatanga', '-0.900432965718011', '119.85162592750535'),
(64, 'Apotek Kimia Farma Palola', 'Ola', 'Jl. Palola', 'Tatanga', '-0.9008552441794522', '119.8472389131853'),
(65, 'Apotek Inara Tawaeli', 'Inara', 'Jl. Rayabulangisi', 'Tawaeli', '-0.7333851695714568', '119.86338581842283'),
(66, 'Apotek Subur Farma', 'Subur', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7323897621315067', '119.86342178283854'),
(67, 'Apotek Anugrah', 'Anugrah', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7314117717686192', '119.86347282659285'),
(68, 'Apotek Pantoloan', 'Tika', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7061686843766701', ' 119.85326907563024'),
(69, 'Apotek Dahlia', 'Dahlia', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7060756892881884', '119.85293691884077'),
(70, 'Apotek Aulia', 'Aulia', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7089319794872955', '119.8596064992359'),
(71, 'Apotek Putra', 'Putra', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7095753627912713', '119.85978873947695'),
(72, 'Apotek Dina', 'Dina', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7068871563304414', '119.85404759074184'),
(73, 'Apotek Bahari', 'Ari', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.706585178156615', '119.8541020983669'),
(74, 'Apotek Aris', 'Aris', 'Jl. Trans Sulawesi ', 'Tawaeli', '-0.7017654893803132', '119.85205379608612'),
(75, 'Apotek Rama', 'Rama', 'Jl. Poros Palu', 'Ulujadi', '-0.8519649199328287', '119.82450127496321'),
(76, 'Apotek Atika', 'Atika', 'Jl. Poros Palu', 'Ulujadi', '-0.8514836465091361', ' 119.82429010831824'),
(77, 'Apotek Marwah', 'Marwah', 'Jl. Poros Palu', 'Ulujadi', '-0.8513243811811128', '119.82425028762411'),
(78, 'Apotek Surianti', 'Suri', 'Jl. Poros Palu', 'Ulujadi', '-0.8519308145397513', '119.82466687449046'),
(79, 'Apotek Caca', 'Caca', 'Jl. Poros Palu', 'Ulujadi', '-0.8540036544611727', '119.8255136708905'),
(80, 'Apotek Syifa', 'Syifa', 'Jl. Poros Palu', 'Ulujadi', '-0.8545791116134246', '119.82558343094571'),
(81, 'Apotek Rafa', 'Rafa', 'Jl. Poros Palu', 'Ulujadi', '-0.8534281974835884', '119.82510034214023'),
(82, 'Apotek Nita', 'Nita', 'Jl. Poros Palu', 'Ulujadi', '-0.8531369812421823', '119.82517010232709'),
(83, 'Apotek Zahra', 'Zahra', 'Jl. Poros Palu', 'Ulujadi', '-0.854983054079385', '119.82601691925018'),
(84, 'Apotek Irfan', 'Irfan', 'Jl. Poros Palu', 'Ulujadi', '-0.8549393343928465', '119.8257828631865');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `poligon` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`, `warna`, `poligon`) VALUES
(1, 'Mantikulore', '#d48282', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.870298,-0.874464],[119.870148,-0.876287],[119.870405,-0.877253],[119.87122,-0.878561],[119.87152,-0.879291],[119.871113,-0.87972],[119.872485,-0.880836],[119.87523,-0.880643],[119.877332,-0.882252],[119.881213,-0.885127],[119.884472,-0.887165],[119.88739,-0.889388],[119.901057,-0.889777],[119.914438,-0.886859],[119.924216,-0.882911],[119.936568,-0.86815],[119.938455,-0.856822],[119.940685,-0.835367],[119.938112,-0.82524],[119.930049,-0.819747],[119.923187,-0.819404],[119.917526,-0.817344],[119.910664,-0.814083],[119.902601,-0.810478],[119.894023,-0.808933],[119.876868,-0.804642],[119.877211,-0.812023],[119.878927,-0.818202],[119.883216,-0.822837],[119.879441,-0.828501],[119.881157,-0.833135],[119.879441,-0.84515],[119.877897,-0.856307],[119.878927,-0.861456],[119.872579,-0.868322],[119.870298,-0.874464]]]}}]}'),
(3, 'Palu Barat', '#064aea', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.862344,-0.8921],[119.860629,-0.88841],[119.860286,-0.885921],[119.859857,-0.88502],[119.855268,-0.884462],[119.851493,-0.883733],[119.844331,-0.883475],[119.837726,-0.880128],[119.836225,-0.88472],[119.841758,-0.888238],[119.844031,-0.88944],[119.841243,-0.894246],[119.847376,-0.894074],[119.847376,-0.898322],[119.839356,-0.899095],[119.839313,-0.901197],[119.8403,-0.904158],[119.84253,-0.903514],[119.842873,-0.901626],[119.848277,-0.901626],[119.85708,-0.904042],[119.857626,-0.903959],[119.858848,-0.899925],[119.859877,-0.896578],[119.86318,-0.898316],[119.86393,-0.898531],[119.867168,-0.897565],[119.862344,-0.8921]]]}}]}'),
(4, 'Palu Selatan', '#14f040', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.863235,-0.908011],[119.863235,-0.898399],[119.866151,-0.897798],[119.862548,-0.891877],[119.870268,-0.89222],[119.874471,-0.892477],[119.873883,-0.896597],[119.887607,-0.897455],[119.893183,-0.89797],[119.896785,-0.898742],[119.898672,-0.899515],[119.903647,-0.898313],[119.907078,-0.901488],[119.906821,-0.903033],[119.898072,-0.904406],[119.898758,-0.919339],[119.876628,-0.91891],[119.875856,-0.908526],[119.870709,-0.905522],[119.870023,-0.909126],[119.866849,-0.909126],[119.863235,-0.908011]]]}}]}'),
(6, 'Palu Timur', '#e6df14', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.87375,-0.896702],[119.874479,-0.89254],[119.862041,-0.892111],[119.859897,-0.888979],[119.859425,-0.885331],[119.859983,-0.884902],[119.863242,-0.885675],[119.865987,-0.884902],[119.868217,-0.884301],[119.869632,-0.882757],[119.870876,-0.880139],[119.871305,-0.879538],[119.873106,-0.880397],[119.875508,-0.880654],[119.885329,-0.888035],[119.887517,-0.897947],[119.885244,-0.897132],[119.879239,-0.896917],[119.87375,-0.896702]]]}}]}'),
(8, 'Tatanga', '#cf02c8', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.840028,-0.90374],[119.842387,-0.90374],[119.842816,-0.901895],[119.847662,-0.901809],[119.851951,-0.902195],[119.857904,-0.903634],[119.859019,-0.898828],[119.86022,-0.897112],[119.863908,-0.898828],[119.863308,-0.908354],[119.867854,-0.909041],[119.869655,-0.908869],[119.870942,-0.90535],[119.875402,-0.90844],[119.876517,-0.91891],[119.870684,-0.921656],[119.865709,-0.922514],[119.861249,-0.9226],[119.856531,-0.922514],[119.843836,-0.921914],[119.838861,-0.921313],[119.840028,-0.90374]]]}}]}'),
(10, 'Palu Utara', '#fa0000', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.87645,-0.805369],[119.882454,-0.806999],[119.885457,-0.807686],[119.88863,-0.809145],[119.892919,-0.808802],[119.896951,-0.808373],[119.904928,-0.811977],[119.909988,-0.813093],[119.92071,-0.802708],[119.922941,-0.789835],[119.911876,-0.778077],[119.908873,-0.773271],[119.901668,-0.772585],[119.886657,-0.773357],[119.872762,-0.776704],[119.870703,-0.776962],[119.870189,-0.775073],[119.890346,-0.771812],[119.908445,-0.758424],[119.912304,-0.748297],[119.909217,-0.740143],[119.904585,-0.739714],[119.897294,-0.742031],[119.890432,-0.742375],[119.883998,-0.738684],[119.877222,-0.733106],[119.863498,-0.732677],[119.855092,-0.731904],[119.853634,-0.734651],[119.853033,-0.735852],[119.853205,-0.737912],[119.854406,-0.739371],[119.853891,-0.742804],[119.860667,-0.753961],[119.860925,-0.755677],[119.857751,-0.764689],[119.857494,-0.775073],[119.858437,-0.780223],[119.87645,-0.805369]]]}}]}'),
(11, 'Tawaeli', '#8209fb', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.855345,-0.731046],[119.864009,-0.732763],[119.872929,-0.733277],[119.877647,-0.733106],[119.879105,-0.733964],[119.893944,-0.728214],[119.894545,-0.726412],[119.899949,-0.726755],[119.906811,-0.722464],[119.911614,-0.710963],[119.918734,-0.706415],[119.924052,-0.703668],[119.937211,-0.698485],[119.948876,-0.690589],[119.968433,-0.673081],[119.970492,-0.662095],[119.961228,-0.658662],[119.965688,-0.648363],[119.908733,-0.675484],[119.88849,-0.676514],[119.878197,-0.671364],[119.875452,-0.661065],[119.895352,-0.650766],[119.928976,-0.630512],[119.953337,-0.607854],[119.96363,-0.594465],[119.937897,-0.591718],[119.924173,-0.602704],[119.895352,-0.60648],[119.882657,-0.615063],[119.862071,-0.61575],[119.847318,-0.614033],[119.811292,-0.628108],[119.805116,-0.64287],[119.807518,-0.653513],[119.816439,-0.661752],[119.816439,-0.674454],[119.823987,-0.689902],[119.842171,-0.696082],[119.843887,-0.701575],[119.861728,-0.71565],[119.855345,-0.731046]]]}}]}'),
(13, 'Ulujadi', '#ff7429', '{\"type\":\"FeatureCollection\",\"features\":[{\"type\":\"Feature\",\"properties\":{},\"geometry\":{\"type\":\"Polygon\",\"coordinates\":[[[119.83686,-0.880165],[119.835488,-0.884113],[119.844067,-0.889268],[119.841344,-0.894331],[119.835818,-0.895224],[119.826554,-0.895996],[119.82338,-0.891962],[119.819434,-0.883724],[119.817376,-0.877201],[119.810085,-0.876429],[119.803137,-0.86656],[119.786651,-0.853732],[119.780818,-0.829874],[119.778073,-0.81168],[119.79317,-0.802239],[119.805007,-0.798978],[119.810325,-0.806874],[119.811011,-0.823695],[119.814099,-0.836911],[119.816844,-0.84309],[119.822848,-0.84721],[119.83686,-0.880165]]]}}]}');

-- --------------------------------------------------------

--
-- Table structure for table `makan`
--

CREATE TABLE `makan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `pemilik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makan`
--

INSERT INTO `makan` (`id`, `nama`, `alamat`, `kecamatan`, `latitude`, `longitude`, `pemilik`) VALUES
(8, 'Soto Kudus Ragil', '5VJJ+R4X, Jl. RE Martadinata, Layana Indah, Kec. Mantikulore, Kota Palu, Sulawesi Tengah', 'Mantikulore', '-0.8176589970307849', '119.88038302977058', 'Ragil'),
(9, 'MOMS IMAM JAYA', 'Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah', 'Mantikulore', '-0.8339330368604175', '119.88305725216048', 'Imam'),
(10, 'Toky Toky Martadinata', 'Jl. RE Martadinata No.Kel, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8395650776080164', '119.88346493220419', 'Mila'),
(11, 'Warung makan Berkah', '5V4P+MQ7, Jl. Untad I, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8430837548956', '119.88690891500453', 'Linda'),
(12, 'Warung mas joko soto ayam lamongan', '5V5R+F3M, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8410884033134018', '119.89020268990909', 'Joko'),
(13, 'Warung Ar Rahman', 'Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah', 'Mantikulore', '-0.842890659822473', '119.88779940186645', 'Rahman'),
(14, 'Masakan Padang', 'Jl. RE Martadinata No.6, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8434806825081429', '119.88310016851399', 'Dina'),
(15, 'Kedai Indi', '5V4M+V2Q, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8425795542717048', ' 119.88267100864768', 'Indi'),
(16, 'Warung Makan Sido Mullyo', '5V4M+M74, jl. re.martadinata, Tondo, Mantikulore, Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8431881847949485', '119.88320175246666', 'Anugrah'),
(17, 'Seblak Baim Wong Palu', 'Jl. Uwe Goyo, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8456583970319606', '119.8816277555762', 'Baim'),
(18, 'Kantin Ibu Wayan', '5V2P+HG9, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.848474957042425', '119.88640945861121', 'Wayan'),
(19, 'Waroeng bang yudha 2', 'Jl. Roviga, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8484462211322286', '119.88796138336821', 'Yudha'),
(20, 'Warung  Makan Rizky Pantai Timur', '5V2R+H5H, Jl. Roviga, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.848350434242067', '119.89053833991605', 'Rizky'),
(21, 'Warung makan SRI RAHAYU KHAS BALI', 'Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8475649831255416', '119.88875648865894', 'Sri'),
(22, 'Rumah Makan Gelora Masakan Padang', '5V3R+CJ7, Jl. Soekarno Hatta, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8463293163114813', '119.89153465766377', 'Ira'),
(23, 'Warung Mas Karso', 'Jl. Trans Sulawesi, RT.01/RW.07, Tondo, Kec. Mantikulore, Kota Palu, Sulawesi Tengah 94119', 'Mantikulore', '-0.8530714723011888', '119.8834772987803', 'Karso'),
(24, 'Warung mas akbar', '4VWJ+G65, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8535262770309744', '119.88057529299665', 'Akbar'),
(25, 'Warung mas adzan', '4VWJ+M8W, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Mantikulore', '-0.8527996147765557', '119.88078562797527', 'Adzan'),
(26, 'Master Bakery', 'Jl. RE Martadinata, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94148', 'Mantikulore', '-0.8414074336612791', '119.88331360670543', 'Rina'),
(27, 'Rocket Chicken Tondo Palu', '5V6M+MCF, Tondo, Kec. Palu Tim., Kota Palu, Sulawesi Tengah', 'Mantikulore', '-0.8381345528797514', '119.88361873960616', 'Dini'),
(28, 'JCO Donuts & Coffee', 'Jl. Cumi-Cumi No.77, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8835068988694378', '119.8429038389537', 'Doni'),
(29, 'RM Zens Jendral', 'Jl. Diponegoro No.6, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 'Palu Barat', '-0.8831842180080708', '119.84256851351738', 'Zen'),
(30, 'Jiwa Toast', '4R8R+JV3, Grand Mall Lantai Dasar Depan Hypermart, Lere, Palu Barat, Palu City, Central Sulawesi 942', 'Palu Barat', '-0.8834363124333999', '119.84218276320335', 'Jeni'),
(31, 'Rumah Makan Padang', '4R8V+478, Jl. Diponegoro, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 'Palu Barat', '-0.8846897195104235', '119.84318333489637', 'Dadang'),
(32, 'Ranah Minang Restaurant', '4R8V+39M, Jl. Diponegoro, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8847432554236647', '119.8434102913485', 'Inang'),
(33, 'WM Tamir Berkah', 'Jl. Diponegoro No.10, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8850672532001987', '119.84387284716094', 'Tamir'),
(34, 'Rm. Terminal Indah Ikan Bakar Donggala', 'Jl. Diponegoro No.18, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8851958629967749', '119.84401136654864', 'Indah'),
(35, 'Ky Kitchen', '4R7V+5C8, Jl. Samudra 2, Kabonena, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 'Palu Barat', '-0.887048811585639', '119.84356122278241', 'Ica'),
(36, 'Warung Hidayah', '4R6V+PVR, Jl. Tomampe, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8880993935955098', '119.84465561244724', 'Anya'),
(37, 'Kedai memories ms', 'Jl. Lasoso No.44, Kabonena, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8907928995827274', '119.84629708676306', 'Faiz'),
(38, 'Warung Makan Misna 77', 'Jl. Asam II No.37, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 'Palu Barat', '-0.89374287411049', '119.84542806422391', 'Misna'),
(39, 'Warung sari laut \" Mas zay \" Lamongan', '4R6X+W83, Jl. Diponegoro, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah', 'Palu Barat', '-0.8875871191431293', '119.84830523966514', 'Zay'),
(40, 'Rumah Makan Mas Yono', 'Jl. Diponegoro No.49-40, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8877658843343751', '119.84879610323149', 'Yono'),
(41, 'Warung Mas Riski Jember', 'Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah', 'Palu Barat', '-0.8897089825775221', '119.85186452219185', 'Riski'),
(42, 'R.M. Kaledo Abadi', 'Jl. Diponegoro No.75, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94221', 'Palu Barat', '-0.8908595008077436', '119.85395275176747', 'Abdi'),
(43, 'Warung Makan Khas Kaili', 'Jl. Tembang No.23, Lere, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8869136479891532', '119.85410617275276', 'Lili'),
(44, 'Gado gado mama mirdad oscar', 'Jl. KH Mas Mansyur No.31, Baru, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8922486445390795', '119.85968046721678', 'Oscar'),
(45, 'Gado gado depan makam raja( warung makan difaz) ', 'Jl. Durian, Siranindi, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.8959729107499593', '119.85748143362969', 'Difaz'),
(46, 'Rumah Makan Ajiebon', '3VX5+9H5, Jl. Sungai Sausu, Siranindi, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.9014186844661344', '119.85898154956861', 'Aji'),
(47, 'Bakso & Mie Ayam Gangsar', 'Jl. Sis Aljufri No.49, Siranindi, Kec. Palu Bar., Kota Palu, Sulawesi Tengah 94111', 'Palu Barat', '-0.9024754534165399', '119.8581633045208', 'Gama'),
(48, 'Bunaken Indah', 'Jl. Patimura No.50, Lolu Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94235', 'Palu Selatan', '-0.9012360797700638', '119.86920533812834', 'Eka'),
(49, 'Pangsit Mie Malei', 'Jl. Sulawesi No.18, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.8998687174375105', '119.87029645349416', 'Mela'),
(50, 'Warung Makan Tinombala', '4V2F+2W7, Lolu Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.8996650676845379', '119.87483549341601', 'Tina'),
(51, 'Rumah Makan Boulevard', '4V29+2R5, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.8997087069182746', '119.86965633247955', 'Boli'),
(52, 'Foodie Cafe & Resto', 'Jl. Sultan Hasanuddin, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.8980795085049396', '119.87127118322097', 'Reso'),
(53, 'R.M. Kerinci', 'Jl. R.A. Kartini No.15, Lolu Utara, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94235', 'Palu Selatan', '-0.901772375502562', '119.87694937861548', 'Rini'),
(54, 'Warung mas ridho', '3VWF+54X, Jl. Woodward, Lolu Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.904223749473616', '119.8728318211814', 'Rido'),
(55, 'Warung masjoko chi chi', '3VVC+X2V, Jl. Miangas IV, Lolu Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.904788660285705', '119.87003381896797', 'Jesi'),
(56, 'Myoung - Ga Express Palu', 'Jl. Emmy Saelan No.49, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.9132488617624619', '119.87632932398616', 'Lina'),
(57, 'Pizza Hut Restoran', 'Jl. Emmy Saelan No.17, Lolu Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.9096441996916715', '119.87576434276997', 'Indra'),
(58, 'Warung Emy Saelan', '3VMG+6J9, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.9167324683622972', '119.87666562233521', 'Emi'),
(59, 'RM gorontalo ', 'Jl. I Gusti Ngurah Rai, Tawanjuka, Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94231', 'Palu Selatan', '-0.922736955259699', '119.86721156223017', 'Desta'),
(60, 'Warung Barokah', 'Jl. Kancil III No.82, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94126', 'Palu Selatan', '-0.9170353252701493', '119.87375227162138', 'Desti'),
(61, 'Warung Mas Yanto Surabaya', 'Jl. I Gusti Ngurah Rai No.23a, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.9192892622684566', '119.8740703129817', 'Yanto'),
(62, 'Bakso Malang aa tjakep', 'Jl. Lembu No.46, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.9223760978844194', '119.87640067835461', 'Tejo'),
(63, 'Warung Bang Danfi', '3VGH+956, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.924020027895460', '119.87791099615762', 'Danfi'),
(64, 'Warung Triana', 'Jl. Towua No.86, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94111', 'Palu Selatan', '-0.924796115520037', '119.87954366881623', 'Tri'),
(65, 'RM Gelora', 'Jl. Towua No.100, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94235', 'Palu Selatan', '-0.9258245269282009', '119.88064868614858', 'Ela'),
(66, 'Mie ayam bakso mas min', 'Jl. Towua No.96, Tatura Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94235', 'Palu Selatan', '-0.9271970160544133', '119.88168105528489', 'Min'),
(67, 'The Bandsaw Fishing and Resto', 'Jl. Towua No.124, Birobuli Sel., Kec. Palu Sel., Kota Palu, Sulawesi Tengah 94113', 'Palu Selatan', '-0.9278125332905934', '119.88314549000576', 'Eca'),
(68, 'Warung Putra Sulsulaiman', '4V78+P6W, Jl. Rajamoili,., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8855832801881132', '119.8655667519182', 'Putra'),
(69, 'WARUNG SRI UTAMI', '4V78+Q8C, Jl. Rajamoili, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.885524278643568', '119.86575450655377', 'Utami'),
(70, 'Coto Maros', '4V68+4GW, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8895080677971964', '119.8663922137769', 'Mari'),
(71, 'Ayam Pedas Cabang Taman Gor (TMG)', 'Jl. H. Hayun, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8921313951086413', '119.86719589089523', 'Gina'),
(72, 'Waroeng Penyet Mangge Kumis', 'Jl. Kimaja No.65, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8919339513694426', '119.86539209960475', 'Kina'),
(73, 'Coto Makassar Daeng Sija', '4V4C+2F3, Jl. KH Ahmad Dahlan, Besusu Bar., Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8949305072527209', '119.87110373550385', 'Daeng'),
(74, 'RM Pangkep Daeng Saman', '4V3F+W66, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.89516006879857', '119.87303422793136', 'Saman'),
(75, 'Bakso Idola Taman GOR', 'Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8948820083460802', '119.87304716255386', 'Ida'),
(76, 'Warung Sedap Malam', 'Jl. Sedap Malam No.7, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8946944791866115', '119.87384264185162', 'Ila'),
(77, 'CAFE SANTUY GATSU', 'Jl. Gatot Subroto, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah', 'Palu Timur', '-0.8943323538960576', '119.87430828826164', 'Susi'),
(78, 'WM Tinombala (Spesialis Sambal Ijo)', 'Jl. Gatot Subroto, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.8942030234187793', '119.87407223140224', 'Ijat'),
(79, 'Pin Point', 'Jl. Pemuda No.23, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94111', 'Palu Timur', '-0.893853831118239', '119.87412073623804', 'Lutfi'),
(80, 'RM. Pangkep', '4V4F+VM4, Jl. Cik Ditiro, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8927965542261519', '119.87420157763125', 'Umi'),
(81, 'Warung Cahaya Pangkep - Coto Makassar & Sop Konro', 'Jl. Cik Ditiro No.37, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8924893942250864', '119.87332525695689', 'Dirga'),
(82, 'RM Sambel Gami Mama Ria', 'Jl. M.T Haryono No.38, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.891668145245857', '119.87431152192418', 'Rifa'),
(83, 'RM Sambal Panas Mas Surya', '4V5F+8R6, Jl. Suprapto, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah', 'Palu Timur', '-0.8916994202045502', '119.87454791710006', 'Surya'),
(84, 'Rumah Makan Bebek CS', '4V5F+C8H, Jl. M.T Haryono, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8914272282401045', '119.87335342717822', 'Iba'),
(85, 'Next Door Cafe & Resto', '4V5F+X8M, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8900134793873956', '119.87328908310361', 'Edo'),
(86, 'ChickenBim Palu', 'Jl. Suprapto No.88, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8904873996779412', '119.87500084939236', 'Edi'),
(87, 'Warung Kuning “WARNING”', '4V4H+V48, Jl. Setia Budi, Besusu Tengah, Kec. Palu Tim., Kota Palu, Sulawesi Tengah 94118', 'Palu Timur', '-0.8927462060314736', '119.87790207764755', 'Eda'),
(88, 'Seafood house bukit Doda', '3RMJ+G3, Duyu, Kec. Tatanga, Kota Palu, Sulawesi Tengah', 'Tatanga', '-0.9158592419162269', '119.83012077450238', 'Fia'),
(89, 'Upper and hills', '3RJJ+W2M, Unnamed Road, Duyu, Kec. Tatanga, Kota Palu, Sulawesi Tengah', 'Tatanga', '-0.9173965419269541', '119.82999110609991', 'Dedi'),
(90, 'Rumah makan Ayu', '3RCV+FVH, Pengawu, Tatanga, Kota Palu, Sulawesi Tengah', 'Tatanga', '-0.9286423613639794', '119.84464164213851', 'Ayu'),
(91, 'Cream cheese', 'BTN Bukit Sira blok.L no 5, Kota Palu, Sulawesi Tengah 94225', 'Tatanga', '-0.9293565376718312', '119.84202265140271', 'Mery'),
(92, 'Mini dessert palu', 'Jl. Keramik, Duyu, Kec. Tatanga, Kota Palu, Sulawesi Tengah', 'Tatanga', '-0.9233925345682895', '119.84297501165861', 'Ara'),
(93, 'D Talaga', 'Jl. Danau Talaga No.27, Boyaoge, Kec. Tatanga, Kota Palu, Sulawesi Tengah 98111', 'Tatanga', '-0.9045448909328535', '119.86061695949131', 'Alif'),
(94, 'Warung Sahabat', '3VW5+4W2, Jl. Danau Talaga, Boyaoge, Kec. Tatanga, Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9045730412662323', '119.85976295961333', 'Anggun'),
(95, 'Mie Yamin 49', 'Jl. Danau Talaga, Boyaoge, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9049577624459296', '119.86119880556996', 'Aldos'),
(96, 'warung mie ayam denisa', '3VW5+6XQ, Jl. Sungai Surumana, Boyaoge, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9042821544560993', '119.86000695958639', 'Alda'),
(97, 'Ketoprak Lamongan', '3VV6+8VW, Jl. Sungai Ogotion, Nunu, Tatanga, Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9065012384437683', '119.86219850882624', 'Nisa'),
(98, 'Warung Soto ayam Cak Lan', 'Jl. Sungai Ogotion, Nunu, Kec. Tatanga, Kota Palu, Sulawesi Tengah 94222', 'Tatanga', '-0.9067861667574063', '119.86196615357127', 'Desi'),
(99, 'RM. Mie Petir', 'Jl. Danau Talaga, Nunu, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9051291986960913', '119.86232126255909', 'Ede'),
(100, 'Warung Jawa Timur Sidowarjo', 'Jl. Sungai Moutong, Ujuna, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94222', 'Tatanga', '-0.903384559532929', '119.86229934225639', 'Waluyo'),
(101, 'Seblak palu', '3VW7+GWQ, Nunu, Kec. Tatanga, Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9035642837083435', '119.86487278631623', 'mur'),
(102, 'CAFE MAS DOSUN', 'Jl. Beringin No.60b, Nunu, Kec. Tatanga, Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9084913527149847', '119.86097973974393', 'Tafi'),
(103, 'Warung Beringin 1', 'Jl. Beringin No.66, Boyaoge, Kec.Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.909197097800822', '119.86120332687604', 'Atun'),
(104, 'GADO GADO YANTI', 'Jl. Agatis, Nunu, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9100899480094894', '119.86022053603423', 'Daro'),
(105, 'Binte agatis', '3VQ6+C9W, Jl. Agatis, Nunu, Kec. Tatanga, Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9111954837499877', '119.86101990946382', 'Jah'),
(106, 'PANGSIT MIE LIAN TORAJA', 'Jl. Meranti No.17, Nunu, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94111', 'Tatanga', '-0.9123383683415413', '119.86105726338126', 'Mait'),
(107, 'Warung Kapurung Asli Palopo', '3RJX+G24, Jl. Tagari Lonjo, Duyu, Kec. Tatanga., Kota Palu, Sulawesi Tengah 94222', 'Tatanga', '-0.9185169139196564', '119.84757287679895', 'Ryska');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apotik`
--
ALTER TABLE `apotik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `makan`
--
ALTER TABLE `makan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apotik`
--
ALTER TABLE `apotik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `makan`
--
ALTER TABLE `makan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
