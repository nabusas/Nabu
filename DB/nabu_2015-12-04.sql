# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.21)
# Database: nabu
# Generation Time: 2015-12-04 12:48:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table nb_chart_data_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_chart_data_tbl`;

CREATE TABLE `nb_chart_data_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_pos_fld` int(2) DEFAULT NULL,
  `nb_color_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_type_fld`,`nb_value_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_chart_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_chart_tbl`;

CREATE TABLE `nb_chart_tbl` (
  `nb_id_page_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_source_fld` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_source_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;



# Dump of table nb_city_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_city_tbl`;

CREATE TABLE `nb_city_tbl` (
  `nb_id_country_fld` int(11) NOT NULL,
  `cc_codigoDept_fld` int(11) NOT NULL,
  `cc_codCiudad_fld` int(11) NOT NULL DEFAULT '0',
  `cc_descripc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_country_fld`,`cc_codigoDept_fld`,`cc_codCiudad_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_city_tbl` WRITE;
/*!40000 ALTER TABLE `nb_city_tbl` DISABLE KEYS */;

INSERT INTO `nb_city_tbl` (`nb_id_country_fld`, `cc_codigoDept_fld`, `cc_codCiudad_fld`, `cc_descripc_fld`)
VALUES
	(57,1,1010,'Otros'),
	(57,5,5001,'Medellin'),
	(57,5,5002,'Abejorral'),
	(57,5,5004,'Abriaqui'),
	(57,5,5021,'Alejandria'),
	(57,5,5030,'Amaga'),
	(57,5,5031,'Amalfi'),
	(57,5,5034,'Andes '),
	(57,5,5036,'Angelopolis'),
	(57,5,5038,'Angostura'),
	(57,5,5040,'Anori'),
	(57,5,5042,'Santa Fe Antioquia'),
	(57,5,5044,'Anza'),
	(57,5,5045,'Apartado'),
	(57,5,5051,'Arboletes'),
	(57,5,5055,'Argelia '),
	(57,5,5059,'Armenia Mantequilla'),
	(57,5,5079,'Barbosa '),
	(57,5,5086,'Belmira'),
	(57,5,5088,'Bello'),
	(57,5,5091,'Betania'),
	(57,5,5093,'Betulia '),
	(57,5,5101,'Ciudad Bolivar'),
	(57,5,5107,'Briceno '),
	(57,5,5113,'Buritica'),
	(57,5,5120,'Caceres'),
	(57,5,5125,'Caicedo'),
	(57,5,5129,'Caldas '),
	(57,5,5134,'Campamento'),
	(57,5,5138,'Canasgordas'),
	(57,5,5142,'Caracoli'),
	(57,5,5145,'Caramanta'),
	(57,5,5147,'Carepa'),
	(57,5,5148,'El Carmen De Viboral'),
	(57,5,5150,'Carolina'),
	(57,5,5154,'Caucasia'),
	(57,5,5172,'Chigorodo'),
	(57,5,5190,'Cisneros'),
	(57,5,5197,'Cocorna'),
	(57,5,5206,'Concepcion'),
	(57,5,5209,'Concordia '),
	(57,5,5212,'Copacabana'),
	(57,5,5234,'Dabeiba'),
	(57,5,5237,'Don Matias'),
	(57,5,5240,'Ebejico'),
	(57,5,5250,'El Bagre'),
	(57,5,5264,'Entrerrios '),
	(57,5,5266,'Envigado'),
	(57,5,5282,'Fredonia'),
	(57,5,5284,'Frontino'),
	(57,5,5306,'Giraldo'),
	(57,5,5308,'Girardota'),
	(57,5,5310,'Gomez Plata'),
	(57,5,5313,'Granada '),
	(57,5,5315,'Guadalupe '),
	(57,5,5318,'Guarne'),
	(57,5,5321,'Guatape'),
	(57,5,5347,'Heliconia'),
	(57,5,5353,'Hispania'),
	(57,5,5360,'Itagui'),
	(57,5,5361,'Ituango'),
	(57,5,5364,'Jardin'),
	(57,5,5368,'Jerico '),
	(57,5,5376,'La Ceja'),
	(57,5,5380,'La Estrella'),
	(57,5,5390,'La Pintada'),
	(57,5,5400,'La Union '),
	(57,5,5411,'Liborina'),
	(57,5,5425,'Maceo'),
	(57,5,5440,'Marinilla'),
	(57,5,5467,'Montebello'),
	(57,5,5475,'Murindo'),
	(57,5,5480,'Mutata'),
	(57,5,5483,'Narino '),
	(57,5,5490,'Necocli '),
	(57,5,5495,'Nechi'),
	(57,5,5501,'Olaya'),
	(57,5,5541,'Penol'),
	(57,5,5543,'Peque'),
	(57,5,5576,'Pueblorrico'),
	(57,5,5579,'Puerto Berrio'),
	(57,5,5585,'Puerto Nare'),
	(57,5,5591,'Puerto Triunfo'),
	(57,5,5604,'Remedios'),
	(57,5,5607,'Retiro'),
	(57,5,5615,'Rionegro '),
	(57,5,5628,'Sabanalarga '),
	(57,5,5631,'Sabaneta'),
	(57,5,5642,'Salgar'),
	(57,5,5647,'S.Andres Cuerquia'),
	(57,5,5649,'San Carlos '),
	(57,5,5652,'San Francisco '),
	(57,5,5656,'San Jeronimo'),
	(57,5,5658,'San Jose De La Montana'),
	(57,5,5659,'San Juan De Uraba'),
	(57,5,5660,'San Luis '),
	(57,5,5664,'San Pedro '),
	(57,5,5665,'San Pedro De Uraba'),
	(57,5,5667,'San Rafael'),
	(57,5,5670,'San Roque'),
	(57,5,5674,'San Vicente '),
	(57,5,5679,'Santa Barbara '),
	(57,5,5686,'Santa Rosa De Osos'),
	(57,5,5690,'Santo Domingo'),
	(57,5,5697,'El Santuario'),
	(57,5,5736,'Segovia'),
	(57,5,5756,'Sonson'),
	(57,5,5761,'Sopetran'),
	(57,5,5789,'Tamesis'),
	(57,5,5790,'Taraza'),
	(57,5,5792,'Tarso'),
	(57,5,5809,'Titiribi'),
	(57,5,5819,'Toledo '),
	(57,5,5837,'Turbo'),
	(57,5,5842,'Uramita'),
	(57,5,5847,'Urrao'),
	(57,5,5854,'Valdivia'),
	(57,5,5856,'Valparaiso '),
	(57,5,5858,'Vegachi'),
	(57,5,5861,'Venecia '),
	(57,5,5873,'Vigia Del Fuerte'),
	(57,5,5885,'Yali'),
	(57,5,5887,'Yarumal'),
	(57,5,5890,'Yolombo'),
	(57,5,5893,'Yondo'),
	(57,5,5895,'Zaragoza'),
	(57,8,8001,'Barranquilla'),
	(57,8,8078,'Baranoa'),
	(57,8,8137,'Campo De La Cruz '),
	(57,8,8141,'Candelaria '),
	(57,8,8296,'Galapa'),
	(57,8,8372,'Juan De Acosta'),
	(57,8,8421,'Luruaco'),
	(57,8,8433,'Malambo'),
	(57,8,8436,'Manati'),
	(57,8,8520,'Palmar De Varela'),
	(57,8,8549,'Piojo'),
	(57,8,8558,'Polonuevo'),
	(57,8,8560,'Ponedera'),
	(57,8,8573,'Puerto Colombia '),
	(57,8,8606,'Repelon'),
	(57,8,8634,'Sabanagrande'),
	(57,8,8638,'Sabanalarga '),
	(57,8,8675,'Santa Lucia '),
	(57,8,8685,'Santo Tomas'),
	(57,8,8758,'Soledad '),
	(57,8,8770,'Suan'),
	(57,8,8832,'Tubara'),
	(57,8,8849,'Usiacuri'),
	(57,11,11001,'Bogota'),
	(57,13,13001,'Cartagena'),
	(57,13,13006,'Achi'),
	(57,13,13030,'Altos Del Rosario'),
	(57,13,13042,'Arenal'),
	(57,13,13052,'Arjona'),
	(57,13,13062,'Arroyohondo'),
	(57,13,13074,'Barranco De Loba'),
	(57,13,13132,'No Utilizar'),
	(57,13,13140,'Calamar'),
	(57,13,13160,'Cantagallo'),
	(57,13,13188,'Cicuco'),
	(57,13,13212,'Cordoba'),
	(57,13,13222,'Clemencia'),
	(57,13,13244,'El Carmen De Bolivar'),
	(57,13,13248,'El Guamo'),
	(57,13,13268,'El Penon'),
	(57,13,13300,'Hatillo De Loba'),
	(57,13,13430,'Magangue '),
	(57,13,13433,'Mahates'),
	(57,13,13440,'Margarita'),
	(57,13,13442,'Maria La Baja'),
	(57,13,13458,'Montecristo'),
	(57,13,13468,'Mompos'),
	(57,13,13473,'Morales'),
	(57,13,13490,'Norosi'),
	(57,13,13549,'Pinillos'),
	(57,13,13580,'Regidor'),
	(57,13,13600,'Rio Viejo'),
	(57,13,13620,'San Cristobal'),
	(57,13,13647,'San Estanislao'),
	(57,13,13650,'San Fernando'),
	(57,13,13654,'San Jacinto'),
	(57,13,13655,'San Jacinto Del Cauca'),
	(57,13,13657,'San Juan Nepomuceno'),
	(57,13,13667,'San Martin De Loba'),
	(57,13,13670,'San Pablo '),
	(57,13,13673,'Santa Catalina'),
	(57,13,13683,'Santa Rosa'),
	(57,13,13688,'Santa Rosa Del Sur'),
	(57,13,13744,'Simiti'),
	(57,13,13760,'Soplaviento'),
	(57,13,13780,'Talaigua Nuevo'),
	(57,13,13810,'Tiquisio'),
	(57,13,13836,'Turbaco'),
	(57,13,13838,'Turbana'),
	(57,13,13873,'Villanueva'),
	(57,13,13894,'Zambrano'),
	(57,15,15001,'Tunja'),
	(57,15,15022,'Almeida'),
	(57,15,15047,'Aquitania'),
	(57,15,15051,'Arcabuco'),
	(57,15,15087,'Belen '),
	(57,15,15090,'Berbeo'),
	(57,15,15092,'Beteitiva'),
	(57,15,15097,'Boavita'),
	(57,15,15104,'Boyaca'),
	(57,15,15106,'Briceno '),
	(57,15,15109,'Buenavista '),
	(57,15,15114,'Busbanza'),
	(57,15,15131,'Caldas '),
	(57,15,15135,'Campohermoso'),
	(57,15,15162,'Cerinza'),
	(57,15,15172,'Chinavita'),
	(57,15,15176,'Chiquinquira'),
	(57,15,15180,'Chiscas'),
	(57,15,15183,'Chita'),
	(57,15,15185,'Chitaraque'),
	(57,15,15187,'Chivata'),
	(57,15,15189,'Cienaga '),
	(57,15,15204,'Combita'),
	(57,15,15212,'Coper'),
	(57,15,15215,'Corrales'),
	(57,15,15218,'Covarachia'),
	(57,15,15223,'Cubara'),
	(57,15,15224,'Cucaita'),
	(57,15,15226,'Cuitiva'),
	(57,15,15232,'Chiquiza'),
	(57,15,15236,'Chivor'),
	(57,15,15238,'Duitama'),
	(57,15,15244,'El Cocuy'),
	(57,15,15248,'El Espino '),
	(57,15,15272,'Firavitoba'),
	(57,15,15276,'Floresta'),
	(57,15,15293,'Gachantiva'),
	(57,15,15296,'Gameza'),
	(57,15,15299,'Garagoa'),
	(57,15,15317,'Guacamayas'),
	(57,15,15322,'Guateque'),
	(57,15,15325,'Guayata'),
	(57,15,15332,'Güican'),
	(57,15,15362,'Iza'),
	(57,15,15367,'Jenesano'),
	(57,15,15368,'Jerico '),
	(57,15,15377,'Labranzagrande'),
	(57,15,15380,'La Capilla'),
	(57,15,15401,'La Victoria '),
	(57,15,15403,'La Uvita'),
	(57,15,15407,'Villa De Leyva'),
	(57,15,15425,'Macanal'),
	(57,15,15442,'Maripi'),
	(57,15,15455,'Miraflores'),
	(57,15,15464,'Mongua'),
	(57,15,15466,'Mongui'),
	(57,15,15469,'Moniquira'),
	(57,15,15476,'Motavita'),
	(57,15,15480,'Muzo'),
	(57,15,15491,'Nobsa'),
	(57,15,15494,'Nuevo Colon '),
	(57,15,15500,'Oicata'),
	(57,15,15507,'Otanche'),
	(57,15,15511,'Pachavita'),
	(57,15,15514,'Paez'),
	(57,15,15516,'Paipa'),
	(57,15,15518,'Pajarito'),
	(57,15,15522,'Panqueba'),
	(57,15,15531,'Pauna'),
	(57,15,15533,'Paya'),
	(57,15,15537,'Paz Del Rio'),
	(57,15,15542,'Pesca'),
	(57,15,15550,'Pisba'),
	(57,15,15572,'Puerto Boyaca'),
	(57,15,15580,'Quipama'),
	(57,15,15599,'Ramiriqui'),
	(57,15,15600,'Raquira'),
	(57,15,15621,'Rondon'),
	(57,15,15632,'Saboya'),
	(57,15,15638,'Sachica'),
	(57,15,15646,'Samaca'),
	(57,15,15660,'San Eduardo'),
	(57,15,15664,'San Jose De Pare'),
	(57,15,15667,'San Luis De Gaceno'),
	(57,15,15673,'San Mateo'),
	(57,15,15676,'San Miguel De Sema'),
	(57,15,15681,'San Pablo De Borbur'),
	(57,15,15686,'Santana'),
	(57,15,15690,'Santa Maria '),
	(57,15,15693,'Santa Rosa De Viterbo'),
	(57,15,15696,'Santa Sofia'),
	(57,15,15720,'Sativanorte'),
	(57,15,15723,'Sativasur'),
	(57,15,15740,'Siachoque'),
	(57,15,15753,'Soata'),
	(57,15,15755,'Socota'),
	(57,15,15757,'Socha'),
	(57,15,15759,'Sogamoso'),
	(57,15,15761,'Somondoco'),
	(57,15,15762,'Sora'),
	(57,15,15763,'Sotaquira'),
	(57,15,15764,'Soraca'),
	(57,15,15774,'Susacon'),
	(57,15,15776,'Sutamarchan'),
	(57,15,15778,'Sutatenza'),
	(57,15,15790,'Tasco'),
	(57,15,15798,'Tenza'),
	(57,15,15804,'Tibana'),
	(57,15,15806,'Tibasosa'),
	(57,15,15808,'Tinjaca'),
	(57,15,15810,'Tipacoque'),
	(57,15,15814,'Toca'),
	(57,15,15816,'Togüi'),
	(57,15,15820,'Topaga'),
	(57,15,15822,'Tota'),
	(57,15,15832,'Tunungua'),
	(57,15,15835,'Turmeque'),
	(57,15,15837,'Tuta'),
	(57,15,15839,'Tutaza'),
	(57,15,15842,'Umbita'),
	(57,15,15861,'Ventaquemada'),
	(57,15,15879,'Viracacha'),
	(57,15,15897,'Zetaquira'),
	(57,17,17001,'Manizales'),
	(57,17,17013,'Aguadas'),
	(57,17,17042,'Anserma'),
	(57,17,17050,'Aranzazu'),
	(57,17,17088,'Belalcazar'),
	(57,17,17174,'Chinchina'),
	(57,17,17272,'Filadelfia '),
	(57,17,17380,'La Dorada '),
	(57,17,17388,'La Merced'),
	(57,17,17433,'Manzanares'),
	(57,17,17442,'Marmato'),
	(57,17,17444,'Marquetalia'),
	(57,17,17446,'Marulanda'),
	(57,17,17486,'Neira'),
	(57,17,17495,'Norcasia'),
	(57,17,17513,'Pacora'),
	(57,17,17524,'Palestina '),
	(57,17,17541,'Pensilvania'),
	(57,17,17614,'Riosucio '),
	(57,17,17616,'Risaralda'),
	(57,17,17653,'Salamina '),
	(57,17,17662,'Samana'),
	(57,17,17665,'San Jose '),
	(57,17,17777,'Supia'),
	(57,17,17867,'Victoria'),
	(57,17,17873,'Villamaria'),
	(57,17,17877,'Viterbo'),
	(57,18,18001,'Florencia '),
	(57,18,18029,'Albania'),
	(57,18,18094,'Belen Andaquies'),
	(57,18,18150,'Cartagena Del Chaira'),
	(57,18,18205,'Curillo'),
	(57,18,18247,'Doncello'),
	(57,18,18256,'Paujil '),
	(57,18,18290,'No Utilizar'),
	(57,18,18410,'La Montanita'),
	(57,18,18460,'Milan'),
	(57,18,18479,'Morelia'),
	(57,18,18592,'Puerto Rico '),
	(57,18,18610,'San Jose Del Fragua'),
	(57,18,18753,'San Vicente Del Caguan'),
	(57,18,18756,'Solano'),
	(57,18,18785,'Solita'),
	(57,18,18860,'Valparaiso-Caqueta'),
	(57,19,1901,'El Mango'),
	(57,19,1902,'El Plateado'),
	(57,19,19001,'Popayan'),
	(57,19,19022,'Almaguer'),
	(57,19,19050,'Argelia '),
	(57,19,19075,'Balboa '),
	(57,19,19100,'Bolivar '),
	(57,19,19110,'Buenos Aires'),
	(57,19,19130,'Cajibio'),
	(57,19,19137,'Caldono'),
	(57,19,19142,'Caloto'),
	(57,19,19212,'Corinto'),
	(57,19,19256,'El Tambo '),
	(57,19,19290,'Florencia '),
	(57,19,19300,'Guachene'),
	(57,19,19318,'Guapi'),
	(57,19,19355,'Inza'),
	(57,19,19364,'Jambalo'),
	(57,19,19392,'La Sierra '),
	(57,19,19397,'La Vega '),
	(57,19,19418,'Lopez'),
	(57,19,19450,'Mercaderes '),
	(57,19,19455,'Miranda'),
	(57,19,19473,'Morales'),
	(57,19,19513,'Padilla'),
	(57,19,19517,'Paez '),
	(57,19,19532,'Patia'),
	(57,19,19533,'Piamonte'),
	(57,19,19548,'Piendamo'),
	(57,19,19573,'Puerto Tejada'),
	(57,19,19585,'Purace'),
	(57,19,19622,'Rosas'),
	(57,19,19693,'San Sebastian'),
	(57,19,19698,'Santander De Quilichao'),
	(57,19,19701,'Santa Rosa'),
	(57,19,19743,'Silvia'),
	(57,19,19760,'Sotara'),
	(57,19,19780,'Suarez '),
	(57,19,19785,'Sucre '),
	(57,19,19807,'Timbio'),
	(57,19,19809,'Timbiqui'),
	(57,19,19821,'Toribio'),
	(57,19,19824,'Totoro'),
	(57,19,19845,'Villa Rica'),
	(57,20,20001,'Valledupar'),
	(57,20,20011,'Aguachica'),
	(57,20,20013,'Agustin Codazzi'),
	(57,20,20032,'Astrea'),
	(57,20,20045,'Becerril'),
	(57,20,20060,'Bosconia'),
	(57,20,20175,'Chimichagua'),
	(57,20,20178,'Chiriguana'),
	(57,20,20228,'Curumani'),
	(57,20,20238,'El Copey'),
	(57,20,20250,'El Paso'),
	(57,20,20295,'Gamarra'),
	(57,20,20310,'Gonzalez'),
	(57,20,20383,'La Gloria'),
	(57,20,20400,'La Jagua De Ibirico'),
	(57,20,20443,'Manaure '),
	(57,20,20517,'Pailitas'),
	(57,20,20550,'Pelaya'),
	(57,20,20570,'Pueblo Bello'),
	(57,20,20614,'Rio De Oro'),
	(57,20,20621,'La Paz'),
	(57,20,20710,'San Alberto'),
	(57,20,20750,'San Diego'),
	(57,20,20770,'San Martin '),
	(57,20,20787,'Tamalameque'),
	(57,23,23001,'Monteria'),
	(57,23,23068,'Ayapel'),
	(57,23,23079,'Buenavista '),
	(57,23,23090,'Canalete'),
	(57,23,23162,'Cerete'),
	(57,23,23168,'Chima '),
	(57,23,23182,'Chinu'),
	(57,23,23189,'Cienaga De Oro'),
	(57,23,23300,'Cotorra'),
	(57,23,23350,'La Apartada'),
	(57,23,23417,'Lorica'),
	(57,23,23419,'Los Cordobas'),
	(57,23,23464,'Momil'),
	(57,23,23466,'Montelibano'),
	(57,23,23500,'Monitos'),
	(57,23,23555,'Planeta Rica'),
	(57,23,23570,'Pueblo Nuevo'),
	(57,23,23574,'Puerto Escondido'),
	(57,23,23580,'Puerto Libertador'),
	(57,23,23586,'Purisima'),
	(57,23,23660,'Sahagun'),
	(57,23,23670,'San Andres De Sotavento'),
	(57,23,23672,'San Antero'),
	(57,23,23675,'San Bernardo Del Viento'),
	(57,23,23678,'San Carlos'),
	(57,23,23682,'San Jose De Ure'),
	(57,23,23686,'San Pelayo'),
	(57,23,23807,'Tierralta'),
	(57,23,23815,'Tuchin'),
	(57,23,23855,'Valencia'),
	(57,25,25001,'Agua De Dios'),
	(57,25,25019,'Alban '),
	(57,25,25035,'Anapoima'),
	(57,25,25040,'Anolaima'),
	(57,25,25053,'Arbelaez'),
	(57,25,25086,'Beltran'),
	(57,25,25095,'Bituima'),
	(57,25,25099,'Bojaca'),
	(57,25,25120,'Cabrera '),
	(57,25,25123,'Cachipay'),
	(57,25,25126,'Cajica'),
	(57,25,25148,'Caparrapi'),
	(57,25,25151,'Caqueza'),
	(57,25,25154,'Carmen De Carupa'),
	(57,25,25168,'Chaguani'),
	(57,25,25175,'Chia'),
	(57,25,25178,'Chipaque'),
	(57,25,25181,'Choachi'),
	(57,25,25183,'Choconta'),
	(57,25,25200,'Cogua'),
	(57,25,25214,'Cota'),
	(57,25,25224,'Cucunuba'),
	(57,25,25245,'El Colegio'),
	(57,25,25258,'El Penon'),
	(57,25,25260,'El Rosal'),
	(57,25,25269,'Facatativa'),
	(57,25,25279,'Fomeque'),
	(57,25,25281,'Fosca'),
	(57,25,25286,'Funza'),
	(57,25,25288,'Fuquene'),
	(57,25,25290,'Fusagasuga'),
	(57,25,25293,'Gachala'),
	(57,25,25295,'Gachancipa'),
	(57,25,25297,'Gacheta'),
	(57,25,25299,'Gama'),
	(57,25,25307,'Girardot'),
	(57,25,25312,'Granada '),
	(57,25,25317,'Guacheta'),
	(57,25,25320,'Guaduas'),
	(57,25,25322,'Guasca'),
	(57,25,25324,'Guataqui'),
	(57,25,25326,'Guatavita'),
	(57,25,25328,'Guayabal De Siquima'),
	(57,25,25335,'Guayabetal'),
	(57,25,25339,'Gutierrez'),
	(57,25,25368,'Jerusalen'),
	(57,25,25372,'Junin'),
	(57,25,25377,'La Calera'),
	(57,25,25386,'La Mesa'),
	(57,25,25394,'La Palma '),
	(57,25,25398,'La Pena'),
	(57,25,25402,'La Vega '),
	(57,25,25407,'Lenguazaque'),
	(57,25,25426,'Macheta'),
	(57,25,25430,'Madrid'),
	(57,25,25436,'Manta'),
	(57,25,25438,'Medina'),
	(57,25,25473,'Mosquera '),
	(57,25,25483,'Narino '),
	(57,25,25486,'Nemocon'),
	(57,25,25488,'Nilo'),
	(57,25,25489,'Nimaima'),
	(57,25,25491,'Nocaima'),
	(57,25,25506,'Venecia '),
	(57,25,25513,'Pacho'),
	(57,25,25518,'Paime'),
	(57,25,25524,'Pandi'),
	(57,25,25530,'Paratebueno'),
	(57,25,25535,'Pasca'),
	(57,25,25572,'Puerto Salgar'),
	(57,25,25580,'Puli'),
	(57,25,25592,'Quebradanegra'),
	(57,25,25594,'Quetame'),
	(57,25,25596,'Quipile'),
	(57,25,25599,'Apulo'),
	(57,25,25612,'Ricaurte '),
	(57,25,25645,'San Antonio Del Tequendama'),
	(57,25,25649,'San Bernardo'),
	(57,25,25653,'San Cayetano '),
	(57,25,25658,'San Francisco '),
	(57,25,25662,'San Juan De Rio Seco'),
	(57,25,25718,'Sasaima'),
	(57,25,25736,'Sesquile'),
	(57,25,25740,'Sibate'),
	(57,25,25743,'Silvania'),
	(57,25,25745,'Simijaca'),
	(57,25,25754,'Soacha'),
	(57,25,25758,'Sopo'),
	(57,25,25769,'Subachoque'),
	(57,25,25772,'Suesca'),
	(57,25,25777,'Supata'),
	(57,25,25779,'Susa'),
	(57,25,25781,'Sutatausa'),
	(57,25,25785,'Tabio'),
	(57,25,25793,'Tausa'),
	(57,25,25797,'Tena'),
	(57,25,25799,'Tenjo'),
	(57,25,25805,'Tibacuy'),
	(57,25,25807,'Tibirita'),
	(57,25,25815,'Tocaima'),
	(57,25,25817,'Tocancipa'),
	(57,25,25823,'Topaipi'),
	(57,25,25839,'Ubala'),
	(57,25,25841,'Ubaque'),
	(57,25,25843,'Ubate'),
	(57,25,25845,'Une'),
	(57,25,25851,'Utica'),
	(57,25,25862,'Vergara'),
	(57,25,25867,'Viani'),
	(57,25,25871,'Villagomez'),
	(57,25,25873,'Villapinzon'),
	(57,25,25875,'Villeta'),
	(57,25,25878,'Viota'),
	(57,25,25885,'Yacopi'),
	(57,25,25898,'Zipacon'),
	(57,25,25899,'Zipaquira'),
	(57,27,27001,'Quibdo'),
	(57,27,27006,'Acandi'),
	(57,27,27025,'Alto Baudo'),
	(57,27,27050,'Atrato'),
	(57,27,27073,'Bagado'),
	(57,27,27075,'Bahia Solano'),
	(57,27,27077,'Bajo Baudo'),
	(57,27,27099,'Bojaya'),
	(57,27,27135,'El Canton De San Pablo'),
	(57,27,27150,'Carmen Del Darien'),
	(57,27,27160,'Certegui'),
	(57,27,27205,'Condoto'),
	(57,27,27245,'El Carmen De Atrato'),
	(57,27,27250,'El Litoral Del San Juan'),
	(57,27,27361,'Istmina'),
	(57,27,27372,'Jurado'),
	(57,27,27413,'Lloro'),
	(57,27,27425,'Medio Atrato'),
	(57,27,27430,'Medio Baudo'),
	(57,27,27450,'Medio San Juan'),
	(57,27,27491,'Novita'),
	(57,27,27495,'Nuqui'),
	(57,27,27580,'Rio Iro'),
	(57,27,27600,'Rio Quito'),
	(57,27,27615,'Riosucio '),
	(57,27,27660,'San Jose Del Palmar'),
	(57,27,27745,'Sipi'),
	(57,27,27787,'Tado'),
	(57,27,27800,'Unguia'),
	(57,27,27810,'Union Panamericana'),
	(57,41,41001,'Neiva'),
	(57,41,41006,'Acevedo'),
	(57,41,41013,'Agrado'),
	(57,41,41016,'Aipe'),
	(57,41,41020,'Algeciras'),
	(57,41,41026,'Altamira'),
	(57,41,41078,'Baraya'),
	(57,41,41132,'Campoalegre'),
	(57,41,41206,'Colombia'),
	(57,41,41244,'Elias'),
	(57,41,41298,'Garzon'),
	(57,41,41306,'Gigante'),
	(57,41,41319,'Guadalupe '),
	(57,41,41349,'Hobo'),
	(57,41,41357,'Iquira'),
	(57,41,41359,'Isnos'),
	(57,41,41378,'La Argentina'),
	(57,41,41396,'La Plata'),
	(57,41,41483,'Nataga'),
	(57,41,41503,'Oporapa'),
	(57,41,41518,'Paicol'),
	(57,41,41524,'Palermo'),
	(57,41,41530,'Palestina '),
	(57,41,41548,'El Pital '),
	(57,41,41551,'Pitalito'),
	(57,41,41615,'Rivera'),
	(57,41,41660,'Saladoblanco'),
	(57,41,41668,'San Agustin'),
	(57,41,41676,'Santa Maria '),
	(57,41,41770,'Suaza'),
	(57,41,41791,'Tarqui'),
	(57,41,41797,'Tesalia'),
	(57,41,41799,'Tello'),
	(57,41,41801,'Teruel'),
	(57,41,41807,'Timana'),
	(57,41,41872,'Villavieja'),
	(57,41,41885,'Yaguara'),
	(57,44,44001,'Riohacha'),
	(57,44,44035,'Albania'),
	(57,44,44078,'Barrancas'),
	(57,44,44090,'Dibulla'),
	(57,44,44098,'Distraccion'),
	(57,44,44110,'El Molino'),
	(57,44,44279,'Fonseca'),
	(57,44,44378,'Hatonuevo'),
	(57,44,44420,'La Jagua Del Pilar'),
	(57,44,44430,'Maicao'),
	(57,44,44560,'Manaure '),
	(57,44,44650,'San Juan Del Cesar'),
	(57,44,44847,'Uribia'),
	(57,44,44855,'Urumita'),
	(57,44,44874,'Villanueva '),
	(57,47,47001,'Santa Marta'),
	(57,47,47030,'Algarrobo'),
	(57,47,47053,'Aracataca'),
	(57,47,47058,'Ariguani'),
	(57,47,47161,'Cerro San Antonio'),
	(57,47,47170,'Chivolo'),
	(57,47,47189,'Cienaga '),
	(57,47,47205,'Concordia'),
	(57,47,47245,'El Banco'),
	(57,47,47258,'El Pinon'),
	(57,47,47268,'El Reten'),
	(57,47,47288,'Fundacion'),
	(57,47,47318,'Guamal '),
	(57,47,47460,'Nueva Granada'),
	(57,47,47541,'Pedraza'),
	(57,47,47545,'Pijino Del Carmen'),
	(57,47,47551,'Pivijay'),
	(57,47,47555,'Plato'),
	(57,47,47570,'Puebloviejo'),
	(57,47,47605,'Remolino '),
	(57,47,47660,'Sabanas De San Angel'),
	(57,47,47675,'Salamina '),
	(57,47,47692,'San Sebastian Buenavista'),
	(57,47,47703,'San Zenon'),
	(57,47,47707,'Santa Ana'),
	(57,47,47720,'Santa Barbara De Pinto'),
	(57,47,47745,'Sitionuevo'),
	(57,47,47798,'Tenerife'),
	(57,47,47960,'Zapayan'),
	(57,47,47980,'Zona Bananera'),
	(57,50,50001,'Villavicencio'),
	(57,50,50006,'Acacias'),
	(57,50,50110,'Barranca De Upia'),
	(57,50,50124,'Cabuyaro'),
	(57,50,50150,'Castilla La Nueva'),
	(57,50,50223,'San Luis De Cubarral'),
	(57,50,50226,'Cumaral'),
	(57,50,50245,'El Calvario'),
	(57,50,50251,'El Castillo'),
	(57,50,50270,'El Dorado'),
	(57,50,50287,'Fuente De Oro'),
	(57,50,50313,'Granada '),
	(57,50,50318,'Guamal '),
	(57,50,50325,'Mapiripan'),
	(57,50,50330,'Mesetas'),
	(57,50,50350,'La Macarena'),
	(57,50,50370,'La Uribe'),
	(57,50,50400,'Lejanias'),
	(57,50,50450,'Puerto Concordia'),
	(57,50,50568,'Puerto Gaitan'),
	(57,50,50573,'Puerto Lopez'),
	(57,50,50577,'Puerto Lleras'),
	(57,50,50590,'Puerto Rico '),
	(57,50,50606,'Restrepo '),
	(57,50,50680,'San Carlos De Guaroa'),
	(57,50,50683,'San Juan De Arama'),
	(57,50,50686,'San Juanito'),
	(57,50,50689,'San Martin'),
	(57,50,50711,'Vistahermosa'),
	(57,52,5201,'Junin'),
	(57,52,5202,'Olaya Herrera'),
	(57,52,5203,'El Diviso'),
	(57,52,5204,'La Playa'),
	(57,52,5205,'Altaquer'),
	(57,52,5206,'Genova'),
	(57,52,5207,'Las Mesas'),
	(57,52,5208,'Sotomayor'),
	(57,52,5209,'Piedrancha'),
	(57,52,5210,'El Ejido'),
	(57,52,5211,'El Espino'),
	(57,52,5212,'El Remolino'),
	(57,52,5213,'Imbili'),
	(57,52,5214,'Espriella'),
	(57,52,5215,'Guayacana'),
	(57,52,5216,'Llorente'),
	(57,52,52001,'Pasto'),
	(57,52,52019,'Alban'),
	(57,52,52022,'Aldana'),
	(57,52,52036,'Ancuya'),
	(57,52,52051,'Arboleda'),
	(57,52,52079,'Barbacoas'),
	(57,52,52083,'Belen '),
	(57,52,52110,'Buesaco'),
	(57,52,52203,'Colon '),
	(57,52,52207,'Consaca'),
	(57,52,52210,'Contadero'),
	(57,52,52215,'Cordoba '),
	(57,52,52224,'Cuaspud'),
	(57,52,52227,'Cumbal '),
	(57,52,52233,'Cumbitara'),
	(57,52,52240,'Chachagüi'),
	(57,52,52250,'El Charco'),
	(57,52,52254,'Penol'),
	(57,52,52256,'El Rosario'),
	(57,52,52258,'El Tablon Gomez'),
	(57,52,52260,'El Tambo '),
	(57,52,52287,'Funes'),
	(57,52,52317,'Guachucal'),
	(57,52,52320,'Guaitarilla'),
	(57,52,52323,'Gualmatan'),
	(57,52,52352,'Iles'),
	(57,52,52354,'Imues'),
	(57,52,52356,'Ipiales'),
	(57,52,52378,'La Cruz'),
	(57,52,52381,'La Florida '),
	(57,52,52385,'La Llanada'),
	(57,52,52390,'La Tola'),
	(57,52,52399,'La Union '),
	(57,52,52405,'Leiva '),
	(57,52,52411,'Linares'),
	(57,52,52418,'Los Andes'),
	(57,52,52427,'Magüi'),
	(57,52,52435,'Mallama'),
	(57,52,52473,'Mosquera '),
	(57,52,52480,'Narino '),
	(57,52,52490,'Olaya Herrera'),
	(57,52,52506,'Ospina'),
	(57,52,52520,'Francisco Pizarro'),
	(57,52,52540,'Policarpa'),
	(57,52,52560,'Potosi'),
	(57,52,52565,'Providencia'),
	(57,52,52573,'Puerres'),
	(57,52,52585,'Pupiales'),
	(57,52,52612,'Ricaurte'),
	(57,52,52621,'Roberto Payan'),
	(57,52,52678,'Samaniego '),
	(57,52,52683,'Sandona'),
	(57,52,52685,'San Bernardo '),
	(57,52,52687,'San Lorenzo'),
	(57,52,52693,'San Pablo '),
	(57,52,52694,'San Pedro De Cartago'),
	(57,52,52696,'Santa Barbara'),
	(57,52,52699,'Santacruz'),
	(57,52,52720,'Sapuyes'),
	(57,52,52786,'Taminango'),
	(57,52,52788,'Tangua'),
	(57,52,52835,'Tumaco'),
	(57,52,52838,'Tuquerres'),
	(57,52,52885,'Yacuanquer'),
	(57,54,54001,'Cucuta'),
	(57,54,54003,'Abrego'),
	(57,54,54051,'Arboledas'),
	(57,54,54099,'Bochalema'),
	(57,54,54109,'Bucarasica'),
	(57,54,54125,'Cacota'),
	(57,54,54128,'Cachira'),
	(57,54,54172,'Chinacota'),
	(57,54,54174,'Chitaga'),
	(57,54,54206,'Convencion'),
	(57,54,54223,'Cucutilla'),
	(57,54,54239,'Durania'),
	(57,54,54245,'El Carmen'),
	(57,54,54250,'El Tarra'),
	(57,54,54261,'El Zulia'),
	(57,54,54313,'Gramalote'),
	(57,54,54344,'Hacari'),
	(57,54,54347,'Herran'),
	(57,54,54377,'Labateca'),
	(57,54,54385,'La Esperanza'),
	(57,54,54398,'La Playa'),
	(57,54,54405,'Los Patios'),
	(57,54,54418,'Lourdes'),
	(57,54,54480,'Mutiscua'),
	(57,54,54498,'Ocana'),
	(57,54,54518,'Pamplona'),
	(57,54,54520,'Pamplonita'),
	(57,54,54553,'Puerto Santander '),
	(57,54,54599,'Ragonvalia'),
	(57,54,54660,'Salazar'),
	(57,54,54670,'San Calixto'),
	(57,54,54673,'San Cayetano '),
	(57,54,54680,'Santiago'),
	(57,54,54720,'Sardinata'),
	(57,54,54743,'Silos'),
	(57,54,54800,'Teorama'),
	(57,54,54810,'Tibu'),
	(57,54,54820,'Toledo '),
	(57,54,54871,'Villa Caro'),
	(57,54,54874,'Villa Del Rosario'),
	(57,63,63001,'Armenia'),
	(57,63,63111,'Buenavista '),
	(57,63,63130,'Calarca'),
	(57,63,63190,'Circasia'),
	(57,63,63212,'Cordoba '),
	(57,63,63272,'Filandia'),
	(57,63,63302,'Genova '),
	(57,63,63401,'La Tebaida'),
	(57,63,63470,'Montenegro'),
	(57,63,63548,'Pijao'),
	(57,63,63594,'Quimbaya '),
	(57,63,63690,'Salento'),
	(57,66,66001,'Pereira'),
	(57,66,66045,'Apia'),
	(57,66,66075,'Balboa '),
	(57,66,66088,'Belen De Umbria'),
	(57,66,66170,'Dosquebradas'),
	(57,66,66318,'Guatica'),
	(57,66,66383,'La Celia'),
	(57,66,66400,'La Virginia'),
	(57,66,66440,'Marsella'),
	(57,66,66456,'Mistrato'),
	(57,66,66572,'Pueblo Rico'),
	(57,66,66594,'Quinchia'),
	(57,66,66682,'Santa Rosa De Cabal'),
	(57,66,66687,'Santuario'),
	(57,68,68001,'Bucaramanga'),
	(57,68,68013,'Aguada '),
	(57,68,68020,'Albania'),
	(57,68,68051,'Aratoca'),
	(57,68,68077,'Barbosa '),
	(57,68,68079,'Barichara'),
	(57,68,68081,'Barrancabermeja'),
	(57,68,68092,'Betulia '),
	(57,68,68101,'Bolivar '),
	(57,68,68121,'Cabrera '),
	(57,68,68132,'California'),
	(57,68,68147,'Capitanejo'),
	(57,68,68152,'Carcasi'),
	(57,68,68160,'Cepita'),
	(57,68,68162,'Cerrito'),
	(57,68,68167,'Charala'),
	(57,68,68169,'Charta'),
	(57,68,68176,'Chima '),
	(57,68,68179,'Chipata'),
	(57,68,68190,'Cimitarra'),
	(57,68,68207,'Concepcion'),
	(57,68,68209,'Confines'),
	(57,68,68211,'Contratacion'),
	(57,68,68217,'Coromoro'),
	(57,68,68229,'Curiti'),
	(57,68,68235,'El Carmen De Chucuri'),
	(57,68,68245,'El Guacamayo'),
	(57,68,68250,'El Penon'),
	(57,68,68255,'El Playon'),
	(57,68,68264,'Encino'),
	(57,68,68266,'Enciso'),
	(57,68,68271,'Florian'),
	(57,68,68276,'Florida Blanca'),
	(57,68,68296,'Galan'),
	(57,68,68298,'Gambita'),
	(57,68,68307,'Giron'),
	(57,68,68318,'Guaca'),
	(57,68,68320,'Guadalupe '),
	(57,68,68322,'Guapota'),
	(57,68,68324,'Guavata'),
	(57,68,68327,'Güepsa'),
	(57,68,68344,'Hato'),
	(57,68,68368,'Jesus Maria'),
	(57,68,68370,'Jordan'),
	(57,68,68377,'La Belleza'),
	(57,68,68385,'Landazuri'),
	(57,68,68397,'La Paz '),
	(57,68,68406,'Lebrija'),
	(57,68,68418,'Los Santos'),
	(57,68,68425,'Macaravita'),
	(57,68,68432,'Malaga'),
	(57,68,68444,'Matanza'),
	(57,68,68464,'Mogotes'),
	(57,68,68468,'Molagavita'),
	(57,68,68498,'Ocamonte'),
	(57,68,68500,'Oiba'),
	(57,68,68502,'Onzaga'),
	(57,68,68522,'Palmar'),
	(57,68,68524,'Palmas Socorro'),
	(57,68,68533,'Paramo'),
	(57,68,68547,'Pie De Cuesta'),
	(57,68,68549,'Pinchote'),
	(57,68,68572,'Puente Nacional'),
	(57,68,68573,'Puerto Parra'),
	(57,68,68575,'Puerto Wilches'),
	(57,68,68615,'Rionegro '),
	(57,68,68655,'Sabana De Torres'),
	(57,68,68669,'San Andres'),
	(57,68,68673,'San Benito'),
	(57,68,68679,'San Gil'),
	(57,68,68682,'San Joaquin'),
	(57,68,68684,'San Jose De Miranda'),
	(57,68,68686,'San Miguel '),
	(57,68,68689,'San Vicente Chucuri'),
	(57,68,68705,'Santa Barbara'),
	(57,68,68720,'Santa Helena Del Opon'),
	(57,68,68745,'Simacota'),
	(57,68,68755,'Socorro'),
	(57,68,68770,'Suaita'),
	(57,68,68773,'Sucre '),
	(57,68,68780,'Surata'),
	(57,68,68820,'Tona'),
	(57,68,68855,'Valle De San Jose'),
	(57,68,68861,'Velez'),
	(57,68,68867,'Vetas'),
	(57,68,68872,'Villanueva '),
	(57,68,68895,'Zapatoca'),
	(57,70,70001,'Sincelejo'),
	(57,70,70110,'Buenavista '),
	(57,70,70124,'Caimito'),
	(57,70,70204,'Coloso '),
	(57,70,70215,'Corozal'),
	(57,70,70221,'Covenas'),
	(57,70,70230,'Chalan'),
	(57,70,70233,'El Roble'),
	(57,70,70235,'Galeras'),
	(57,70,70265,'Guaranda'),
	(57,70,70400,'La Union '),
	(57,70,70418,'Los Palmitos'),
	(57,70,70429,'Majagual'),
	(57,70,70473,'Morroa'),
	(57,70,70508,'Ovejas'),
	(57,70,70523,'Palmito'),
	(57,70,70670,'Sampues'),
	(57,70,70678,'San Benito Abad'),
	(57,70,70702,'San Juan De Betulia'),
	(57,70,70708,'San Marcos'),
	(57,70,70713,'San Onofre'),
	(57,70,70717,'San Pedro '),
	(57,70,70742,'Since'),
	(57,70,70771,'Sucre '),
	(57,70,70820,'Tolu'),
	(57,70,70823,'Toluviejo'),
	(57,73,73001,'Ibague'),
	(57,73,73024,'Alpujarra'),
	(57,73,73026,'Alvarado'),
	(57,73,73030,'Ambalema'),
	(57,73,73043,'Anzoategui'),
	(57,73,73055,'Armero'),
	(57,73,73067,'Ataco'),
	(57,73,73124,'Cajamarca'),
	(57,73,73148,'Carmen De Apicala'),
	(57,73,73152,'Casabianca'),
	(57,73,73168,'Chaparral'),
	(57,73,73200,'Coello'),
	(57,73,73217,'Coyaima'),
	(57,73,73226,'Cunday'),
	(57,73,73236,'Dolores'),
	(57,73,73268,'Espinal'),
	(57,73,73270,'Falan'),
	(57,73,73275,'Flandes'),
	(57,73,73283,'Fresno'),
	(57,73,73319,'Guamo'),
	(57,73,73347,'Herveo'),
	(57,73,73349,'Honda'),
	(57,73,73352,'Icononzo'),
	(57,73,73408,'Lerida'),
	(57,73,73411,'Libano'),
	(57,73,73443,'Mariquita'),
	(57,73,73449,'Melgar'),
	(57,73,73461,'Murillo'),
	(57,73,73483,'Natagaima'),
	(57,73,73504,'Ortega'),
	(57,73,73520,'Palo Cabildo'),
	(57,73,73547,'Piedras'),
	(57,73,73555,'Planadas'),
	(57,73,73563,'Prado'),
	(57,73,73585,'Purificacion'),
	(57,73,73616,'Rio Blanco'),
	(57,73,73622,'Roncesvalles'),
	(57,73,73624,'Rovira'),
	(57,73,73671,'Saldana'),
	(57,73,73675,'San Antonio'),
	(57,73,73678,'San Luis '),
	(57,73,73686,'Santa Isabel'),
	(57,73,73770,'Suarez '),
	(57,73,73854,'Valle De San Juan'),
	(57,73,73861,'Venadillo'),
	(57,73,73870,'Villahermosa'),
	(57,73,73873,'Villarrica'),
	(57,76,76001,'Cali'),
	(57,76,76020,'Alcala'),
	(57,76,76036,'Andalucia'),
	(57,76,76041,'Ansermanuevo'),
	(57,76,76054,'Argelia '),
	(57,76,76100,'Bolivar '),
	(57,76,76109,'Buenaventura'),
	(57,76,76111,'Buga'),
	(57,76,76113,'Bugalagrande'),
	(57,76,76122,'Caicedonia'),
	(57,76,76126,'Calima'),
	(57,76,76130,'Candelaria '),
	(57,76,76147,'Cartago '),
	(57,76,76233,'Dagua'),
	(57,76,76243,'El Aguila'),
	(57,76,76246,'El Cairo'),
	(57,76,76248,'El Cerrito'),
	(57,76,76250,'El Dovio'),
	(57,76,76275,'Florida'),
	(57,76,76306,'Ginebra'),
	(57,76,76318,'Guacari'),
	(57,76,76364,'Jamundi'),
	(57,76,76377,'La Cumbre'),
	(57,76,76400,'La Union '),
	(57,76,76403,'La Victoria '),
	(57,76,76497,'Obando'),
	(57,76,76520,'Palmira'),
	(57,76,76563,'Pradera'),
	(57,76,76606,'Restrepo '),
	(57,76,76616,'Riofrio'),
	(57,76,76622,'Roldanillo'),
	(57,76,76670,'San Pedro '),
	(57,76,76736,'Sevilla'),
	(57,76,76823,'Toro'),
	(57,76,76828,'Trujillo'),
	(57,76,76834,'Tulua'),
	(57,76,76845,'Ulloa'),
	(57,76,76863,'Versalles'),
	(57,76,76869,'Vijes'),
	(57,76,76890,'Yotoco'),
	(57,76,76892,'Yumbo'),
	(57,76,76895,'Zarzal'),
	(57,81,81001,'Arauca '),
	(57,81,81065,'Arauquita'),
	(57,81,81220,'Cravo Norte'),
	(57,81,81300,'Fortul'),
	(57,81,81591,'Puerto Rondon'),
	(57,81,81736,'Saravena'),
	(57,81,81794,'Tame'),
	(57,85,85001,'Yopal'),
	(57,85,85010,'Aguazul'),
	(57,85,85015,'Chameza'),
	(57,85,85125,'Hato Corozal'),
	(57,85,85136,'La Salina'),
	(57,85,85139,'Mani'),
	(57,85,85162,'Monterrey'),
	(57,85,85225,'Nunchia'),
	(57,85,85230,'Orocue'),
	(57,85,85250,'Paz De Ariporo'),
	(57,85,85263,'Pore'),
	(57,85,85279,'Recetor'),
	(57,85,85300,'Sabanalarga '),
	(57,85,85315,'Sacama'),
	(57,85,85325,'San Luis De Palenque'),
	(57,85,85400,'Tamara'),
	(57,85,85410,'Tauramena'),
	(57,85,85430,'Trinidad'),
	(57,85,85440,'Villanueva '),
	(57,86,8601,'Santana'),
	(57,86,8602,'San Pedro'),
	(57,86,8603,'San Francisco'),
	(57,86,8604,'La Dorada'),
	(57,86,8605,'El Placer'),
	(57,86,8606,'El Tigre'),
	(57,86,8607,'La Hormiga'),
	(57,86,8608,'Puerto Umbria'),
	(57,86,86001,'Mocoa'),
	(57,86,86219,'Colon '),
	(57,86,86320,'Orito'),
	(57,86,86568,'Puerto Asis'),
	(57,86,86569,'Puerto Caicedo'),
	(57,86,86571,'Puerto Guzman'),
	(57,86,86573,'Pto. Leguizamo '),
	(57,86,86749,'Sibundoy'),
	(57,86,86755,'San Francisco '),
	(57,86,86757,'San Miguel '),
	(57,86,86760,'Santiago '),
	(57,86,86865,'Valle Del Guamez'),
	(57,86,86885,'Villa Garzon '),
	(57,88,88001,'San Andres'),
	(57,88,88564,'Providencia'),
	(57,91,91001,'Leticia'),
	(57,91,91263,'El Encanto '),
	(57,91,91405,'La Chorrera '),
	(57,91,91407,'La Pedrera '),
	(57,91,91430,'La Victoria '),
	(57,91,91460,'Miriti Parana'),
	(57,91,91530,'Puerto Alegria '),
	(57,91,91536,'Puerto Arica '),
	(57,91,91540,'Puerto Narino '),
	(57,91,91669,'Puerto Santander '),
	(57,91,91798,'Tarapaca '),
	(57,94,94001,'Inirida'),
	(57,94,94343,'Barranco Minas'),
	(57,94,94663,'Mapiripana'),
	(57,94,94883,'San Felipe'),
	(57,94,94884,'Puerto Colombia '),
	(57,94,94885,'La Guadalupe'),
	(57,94,94886,'Cacahual'),
	(57,94,94887,'Pana Pana'),
	(57,94,94888,'Morichal Nuevo'),
	(57,95,95001,'San Jose Del Guaviare'),
	(57,95,95015,'Calamar'),
	(57,95,95025,'El Retorno '),
	(57,95,95200,'Miraflores'),
	(57,97,97001,'Mitu'),
	(57,97,97161,'Caruru'),
	(57,97,97511,'Pacoa'),
	(57,97,97666,'Taraira'),
	(57,97,97777,'Papunahua'),
	(57,97,97889,'Yavarate'),
	(57,99,9902,'Vichada'),
	(57,99,99001,'Puerto Carreno'),
	(57,99,99524,'La Primavera'),
	(57,99,99624,'Santa Rosalia '),
	(57,99,99773,'Cumaribon');

/*!40000 ALTER TABLE `nb_city_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_config_frmwrk_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_config_frmwrk_tbl`;

CREATE TABLE `nb_config_frmwrk_tbl` (
  `nb_config_frmwrk_id_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_config_type_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_property_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_default_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_config_frmwrk_id_fld`,`nb_config_type_fld`,`nb_property_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_config_frmwrk_tbl` WRITE;
/*!40000 ALTER TABLE `nb_config_frmwrk_tbl` DISABLE KEYS */;

INSERT INTO `nb_config_frmwrk_tbl` (`nb_config_frmwrk_id_fld`, `nb_config_type_fld`, `nb_property_fld`, `nb_type_fld`, `nb_default_fld`)
VALUES
	(1,'schema','default','any',NULL),
	(2,'schema','dependencies','array',NULL),
	(3,'schema','description','string',NULL),
	(4,'schema','disallow','array',NULL),
	(5,'schema','enum','array',NULL),
	(6,'schema','format','string',NULL),
	(7,'schema','maxLength','number',NULL),
	(8,'schema','minLength','number',NULL),
	(9,'schema','pattern','string',NULL),
	(10,'schema','readonly','boolean',NULL),
	(11,'schema','required','boolean',NULL),
	(12,'schema','title','string',NULL),
	(13,'schema','type','string','string'),
	(14,'options','allowOptionalEmpty',NULL,NULL),
	(15,'options','data','object',NULL),
	(16,'options','disabled','boolean',NULL),
	(17,'options','fieldClass','string',NULL),
	(18,'options','focus','checkbox','true'),
	(19,'options','form','object',NULL),
	(20,'options','helper','hidden','boolean'),
	(21,'options','hideInitValidationError','boolean',NULL),
	(22,'options','id','string',NULL),
	(23,'options','inputType','string',NULL),
	(24,'options','label','string',NULL),
	(25,'options','maskString','string',NULL),
	(26,'options','name','string',NULL),
	(27,'options','optionLabels','array',NULL),
	(28,'options','placeholder','string',NULL),
	(29,'options','readonly','boolean',NULL),
	(30,'options','showMessages','boolean','true'),
	(31,'options','size','number','40'),
	(32,'options','type','string','text'),
	(33,'options','typeahead',NULL,NULL),
	(34,'options','validate','boolean','true'),
	(35,'options','view','string',NULL),
	(36,'options','hidden','boolean',NULL),
	(37,'gridoptions','caption','string',NULL),
	(38,'gridoptions','resizable','boolean',NULL),
	(39,'gridoptions','rowNum','number',NULL),
	(40,'gridoptions','autowidth','boolean',NULL),
	(41,'gridoptions','ignorecase','boolean',NULL),
	(42,'gridoptions','sortname','string',NULL),
	(43,'gridoptions','height','number',NULL),
	(44,'gridoptions','table','string',NULL),
	(45,'gridcoloptions','title','string',NULL),
	(46,'gridcoloptions','name','string',NULL),
	(47,'gridcoloptions','search','boolean',NULL),
	(48,'gridcoloptions','sorteable','boolean',NULL),
	(49,'gridcoloptions','autowidth','boolean',NULL),
	(50,'gridcoloptions','link','string',NULL),
	(51,'gridcoloptions','linkoptions','string',NULL),
	(52,'gridcoloptions','formatter','string',NULL),
	(53,'gridcoloptions','editable','boolean',NULL),
	(54,'gridcoloptions','align','string',NULL),
	(55,'options','dataSource','string',NULL),
	(56,'options','dateFormat','string',NULL),
	(57,'options','onFieldChange','string',NULL),
	(58,'options','noneLabel','string','none'),
	(59,'options','removeDefaultNone','boolean',NULL),
	(60,'options','dependencies','array',NULL);

/*!40000 ALTER TABLE `nb_config_frmwrk_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_config_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_config_tbl`;

CREATE TABLE `nb_config_tbl` (
  `nb_id_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_slogan_tbl` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_config_tbl` WRITE;
/*!40000 ALTER TABLE `nb_config_tbl` DISABLE KEYS */;

INSERT INTO `nb_config_tbl` (`nb_id_fld`, `nb_slogan_tbl`)
VALUES
	('nabu','Sistema de Informacion 2');

/*!40000 ALTER TABLE `nb_config_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_country_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_country_tbl`;

CREATE TABLE `nb_country_tbl` (
  `nb_id_country_fld` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nb_desc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_country_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_country_tbl` WRITE;
/*!40000 ALTER TABLE `nb_country_tbl` DISABLE KEYS */;

INSERT INTO `nb_country_tbl` (`nb_id_country_fld`, `nb_desc_fld`)
VALUES
	(57,'Colombia');

/*!40000 ALTER TABLE `nb_country_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_data_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_data_tbl`;

CREATE TABLE `nb_data_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_data_tbl` WRITE;
/*!40000 ALTER TABLE `nb_data_tbl` DISABLE KEYS */;

INSERT INTO `nb_data_tbl` (`nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_value_fld`)
VALUES
	('addcustomer','nbd_person_id_fld','nb_secuencia'),
	('addcustomer','nbd_person_tipo_fld','1'),
	('addcustomer','nb_add_date_fld','nb_sysdate'),
	('addcustomer','nb_add_user_fld','nb_userid'),
	('addcustomer','nb_mdf_date_fld','nb_sysdate'),
	('addcustomer','nb_mdf_user_fld','nb_userid'),
	('error','image','../Images/error.png'),
	('home','image','../Images/admin.jpg');

/*!40000 ALTER TABLE `nb_data_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_datagrid_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_datagrid_tbl`;

CREATE TABLE `nb_datagrid_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_datagrid_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagrid_tbl` DISABLE KEYS */;

INSERT INTO `nb_datagrid_tbl` (`nb_id_page_fld`, `nb_config_frmwrk_id_fld`, `nb_value_fld`)
VALUES
	('srccustomer',37,'Clientes'),
	('srccustomer',38,'true'),
	('srccustomer',39,'44'),
	('srccustomer',40,'true'),
	('srccustomer',41,'true'),
	('srccustomer',43,'350'),
	('srccustomer',44,'nbd_customer_vw');

/*!40000 ALTER TABLE `nb_datagrid_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_datagridcol_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_datagridcol_tbl`;

CREATE TABLE `nb_datagridcol_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_column_fld` int(2) NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_column_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_datagridcol_tbl` WRITE;
/*!40000 ALTER TABLE `nb_datagridcol_tbl` DISABLE KEYS */;

INSERT INTO `nb_datagridcol_tbl` (`nb_id_page_fld`, `nb_column_fld`, `nb_config_frmwrk_id_fld`, `nb_value_fld`)
VALUES
	('srccustomer',1,45,'Estado'),
	('srccustomer',1,46,'nb_estado_fld'),
	('srccustomer',1,47,'true'),
	('srccustomer',1,48,'true'),
	('srccustomer',1,54,'center'),
	('srccustomer',2,45,'Tipo Documento'),
	('srccustomer',2,46,'nb_tipodoc_fld'),
	('srccustomer',2,48,'true'),
	('srccustomer',2,54,'center'),
	('srccustomer',3,45,'Numero Documento'),
	('srccustomer',3,46,'nb_numerodoc_fld'),
	('srccustomer',3,48,'true'),
	('srccustomer',3,54,'center'),
	('srccustomer',4,45,'Nombre/Razon Social'),
	('srccustomer',4,46,'nb_nombre_fld'),
	('srccustomer',4,48,'true'),
	('srccustomer',4,54,'center'),
	('srccustomer',5,45,'Departamento'),
	('srccustomer',5,46,'nb_state_fld'),
	('srccustomer',5,48,'true'),
	('srccustomer',5,54,'center'),
	('srccustomer',6,45,'Ciudad'),
	('srccustomer',6,46,'nb_add_city_fld'),
	('srccustomer',6,48,'true'),
	('srccustomer',6,54,'center'),
	('srccustomer',7,45,'Direccion'),
	('srccustomer',7,46,'nb_add_direccion_fld'),
	('srccustomer',7,48,'true'),
	('srccustomer',7,54,'center'),
	('srccustomer',8,45,'Telefono'),
	('srccustomer',8,46,'nb_add_telefono_fld'),
	('srccustomer',8,48,'true'),
	('srccustomer',8,54,'center'),
	('srccustomer',9,45,'Celular'),
	('srccustomer',9,46,'nb_add_celular_fld'),
	('srccustomer',9,48,'true'),
	('srccustomer',9,54,'center'),
	('srccustomer',10,45,'Email'),
	('srccustomer',10,46,'nb_add_email_fld'),
	('srccustomer',10,48,'true'),
	('srccustomer',10,54,'center');

/*!40000 ALTER TABLE `nb_datagridcol_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_form_tables_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_form_tables_tbl`;

CREATE TABLE `nb_form_tables_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_table_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_page_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_table_field_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_table_fld`,`nb_id_page_field_fld`,`nb_id_table_field_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_form_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_form_tables_tbl` DISABLE KEYS */;

INSERT INTO `nb_form_tables_tbl` (`nb_id_page_fld`, `nb_id_table_fld`, `nb_id_page_field_fld`, `nb_id_table_field_fld`)
VALUES
	('addcustomer','nbd_address_tbl','nbd_person_id_fld','nbd_person_id_fld'),
	('addcustomer','nbd_address_tbl','nb_add_celular_fld','nb_add_celular_fld'),
	('addcustomer','nbd_address_tbl','nb_add_city_fld','nb_add_city_fld'),
	('addcustomer','nbd_address_tbl','nb_add_direccion_fld','nb_add_direccion_fld'),
	('addcustomer','nbd_address_tbl','nb_add_email_fld','nb_add_email_fld'),
	('addcustomer','nbd_address_tbl','nb_add_telefono_fld','nb_add_telefono_fld'),
	('addcustomer','nbd_address_tbl','nb_state_fld','nb_state_fld'),
	('addcustomer','nbd_customer_tbl','nbd_person_id_fld','nbd_person_id_fld'),
	('addcustomer','nbd_customer_tbl','nb_add_date_fld','nb_add_date_fld'),
	('addcustomer','nbd_customer_tbl','nb_add_user_fld','nb_add_user_fld'),
	('addcustomer','nbd_customer_tbl','nb_estado_fld','nb_estado_fld'),
	('addcustomer','nbd_customer_tbl','nb_mdf_date_fld','nb_mdf_date_fld'),
	('addcustomer','nbd_customer_tbl','nb_mdf_user_fld','nb_mdf_user_fld'),
	('addcustomer','nbd_customer_tbl','nb_observaciones_fld','nb_observaciones_fld'),
	('addcustomer','nbd_person_tbl','nbd_person_id_fld','nbd_person_id_fld'),
	('addcustomer','nbd_person_tbl','nbd_person_tipo_fld','nbd_person_tipo_fld'),
	('addcustomer','nbd_person_tbl','nb_ciudadexp_fld','nb_ciudadexp_fld'),
	('addcustomer','nbd_person_tbl','nb_fechaexp_fld','nb_fechaexp_fld'),
	('addcustomer','nbd_person_tbl','nb_fechanac_fld','nb_fechanac_fld'),
	('addcustomer','nbd_person_tbl','nb_nombre_fld','nb_nombre_fld'),
	('addcustomer','nbd_person_tbl','nb_numerodoc_fld','nb_numerodoc_fld'),
	('addcustomer','nbd_person_tbl','nb_rlegal_fld','nb_rlegal_fld'),
	('addcustomer','nbd_person_tbl','nb_sexo_fld','nb_sexo_fld'),
	('addcustomer','nbd_person_tbl','nb_tipodoc_fld','nb_tipodoc_fld');

/*!40000 ALTER TABLE `nb_form_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_forms_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_forms_tbl`;

CREATE TABLE `nb_forms_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_config_frmwrk_id_fld` int(11) NOT NULL DEFAULT '0',
  `nb_schem_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_pr_schema_fld`,`nb_config_frmwrk_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_forms_tbl` WRITE;
/*!40000 ALTER TABLE `nb_forms_tbl` DISABLE KEYS */;

INSERT INTO `nb_forms_tbl` (`nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_config_frmwrk_id_fld`, `nb_schem_value_fld`)
VALUES
	('addcustomer','nbd_person_id_fld',13,'string'),
	('addcustomer','nbd_person_id_fld',24,'Id'),
	('addcustomer','nbd_person_id_fld',36,'true'),
	('addcustomer','nbd_person_tipo_fld',13,'string'),
	('addcustomer','nbd_person_tipo_fld',24,'Tipo'),
	('addcustomer','nbd_person_tipo_fld',36,'true'),
	('addcustomer','nb_add_celular_fld',6,'phone'),
	('addcustomer','nb_add_celular_fld',11,'false'),
	('addcustomer','nb_add_celular_fld',13,'string'),
	('addcustomer','nb_add_celular_fld',24,'Celular'),
	('addcustomer','nb_add_city_fld',11,'false'),
	('addcustomer','nb_add_city_fld',13,'integer'),
	('addcustomer','nb_add_city_fld',24,'Municipio'),
	('addcustomer','nb_add_city_fld',32,'select'),
	('addcustomer','nb_add_city_fld',55,'../Events/ValoresCampo.php?campo=city'),
	('addcustomer','nb_add_city_fld',58,'Seleccione Municipio'),
	('addcustomer','nb_add_city_fld',59,'false'),
	('addcustomer','nb_add_date_fld',11,'false'),
	('addcustomer','nb_add_date_fld',13,'string'),
	('addcustomer','nb_add_date_fld',24,'Fecha Creacion'),
	('addcustomer','nb_add_date_fld',36,'true'),
	('addcustomer','nb_add_direccion_fld',11,'false'),
	('addcustomer','nb_add_direccion_fld',13,'string'),
	('addcustomer','nb_add_direccion_fld',24,'Direccion'),
	('addcustomer','nb_add_email_fld',6,'email'),
	('addcustomer','nb_add_email_fld',11,'false'),
	('addcustomer','nb_add_email_fld',13,'string'),
	('addcustomer','nb_add_email_fld',24,'Email'),
	('addcustomer','nb_add_telefono_fld',6,'phone'),
	('addcustomer','nb_add_telefono_fld',11,'false'),
	('addcustomer','nb_add_telefono_fld',13,'string'),
	('addcustomer','nb_add_telefono_fld',24,'Telefono'),
	('addcustomer','nb_add_user_fld',11,'false'),
	('addcustomer','nb_add_user_fld',13,'string'),
	('addcustomer','nb_add_user_fld',24,'Usuario Creacion'),
	('addcustomer','nb_add_user_fld',36,'true'),
	('addcustomer','nb_ciudadexp_fld',2,'nb_tipodoc_fld'),
	('addcustomer','nb_ciudadexp_fld',11,'false'),
	('addcustomer','nb_ciudadexp_fld',13,'integer'),
	('addcustomer','nb_ciudadexp_fld',24,'Lugar de Expedicion'),
	('addcustomer','nb_ciudadexp_fld',32,'select'),
	('addcustomer','nb_ciudadexp_fld',55,'../Events/ValoresCampo.php?campo=city'),
	('addcustomer','nb_ciudadexp_fld',58,'Seleccione Ciudad'),
	('addcustomer','nb_ciudadexp_fld',59,'false'),
	('addcustomer','nb_ciudadexp_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('addcustomer','nb_estado_fld',11,'true'),
	('addcustomer','nb_estado_fld',13,'integer'),
	('addcustomer','nb_estado_fld',24,'Estado'),
	('addcustomer','nb_estado_fld',32,'select'),
	('addcustomer','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('addcustomer','nb_estado_fld',58,'Seleccione Estado'),
	('addcustomer','nb_estado_fld',59,'false'),
	('addcustomer','nb_fechaexp_fld',2,'nb_tipodoc_fld'),
	('addcustomer','nb_fechaexp_fld',6,'date'),
	('addcustomer','nb_fechaexp_fld',24,'Fecha Expedicion'),
	('addcustomer','nb_fechaexp_fld',56,'YYYY-MM-DD'),
	('addcustomer','nb_fechaexp_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('addcustomer','nb_fechanac_fld',2,'nb_tipodoc_fld'),
	('addcustomer','nb_fechanac_fld',6,'date'),
	('addcustomer','nb_fechanac_fld',24,'Fecha de Nacimiento'),
	('addcustomer','nb_fechanac_fld',56,'YYYY-MM-DD'),
	('addcustomer','nb_fechanac_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('addcustomer','nb_mdf_date_fld',11,'false'),
	('addcustomer','nb_mdf_date_fld',13,'string'),
	('addcustomer','nb_mdf_date_fld',24,'Fecha Modificacion'),
	('addcustomer','nb_mdf_date_fld',36,'true'),
	('addcustomer','nb_mdf_user_fld',11,'false'),
	('addcustomer','nb_mdf_user_fld',13,'string'),
	('addcustomer','nb_mdf_user_fld',24,'Usuario Modificacion'),
	('addcustomer','nb_mdf_user_fld',36,'true'),
	('addcustomer','nb_nombre_fld',11,'true'),
	('addcustomer','nb_nombre_fld',13,'string'),
	('addcustomer','nb_nombre_fld',24,'Nombre/Razon Social'),
	('addcustomer','nb_numerodoc_fld',11,'true'),
	('addcustomer','nb_numerodoc_fld',13,'string'),
	('addcustomer','nb_numerodoc_fld',24,'Numero Documento'),
	('addcustomer','nb_observaciones_fld',11,'false'),
	('addcustomer','nb_observaciones_fld',13,'string'),
	('addcustomer','nb_observaciones_fld',20,'Ingrese observaciones generales'),
	('addcustomer','nb_observaciones_fld',24,'Observaciones'),
	('addcustomer','nb_observaciones_fld',32,'textarea'),
	('addcustomer','nb_rlegal_fld',2,'nb_tipodoc_fld'),
	('addcustomer','nb_rlegal_fld',11,'false'),
	('addcustomer','nb_rlegal_fld',13,'string'),
	('addcustomer','nb_rlegal_fld',24,'Representante Legal'),
	('addcustomer','nb_rlegal_fld',60,'{\"nb_tipodoc_fld\": [\"3\"] }'),
	('addcustomer','nb_sexo_fld',2,'nb_tipodoc_fld'),
	('addcustomer','nb_sexo_fld',11,'false'),
	('addcustomer','nb_sexo_fld',13,'integer'),
	('addcustomer','nb_sexo_fld',24,'Sexo'),
	('addcustomer','nb_sexo_fld',32,'select'),
	('addcustomer','nb_sexo_fld',55,'../Events/ValoresCampo.php?campo=nb_sexo_fld'),
	('addcustomer','nb_sexo_fld',58,'Seleccione Sexo'),
	('addcustomer','nb_sexo_fld',59,'false'),
	('addcustomer','nb_sexo_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('addcustomer','nb_state_fld',11,'false'),
	('addcustomer','nb_state_fld',13,'integer'),
	('addcustomer','nb_state_fld',24,'Departamento'),
	('addcustomer','nb_state_fld',32,'select'),
	('addcustomer','nb_state_fld',55,'../Events/ValoresCampo.php?campo=state'),
	('addcustomer','nb_state_fld',58,'Seleccione Departamento'),
	('addcustomer','nb_state_fld',59,'false'),
	('addcustomer','nb_tipodoc_fld',11,'true'),
	('addcustomer','nb_tipodoc_fld',13,'integer'),
	('addcustomer','nb_tipodoc_fld',24,'Tipo de Documento'),
	('addcustomer','nb_tipodoc_fld',32,'select'),
	('addcustomer','nb_tipodoc_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),
	('addcustomer','nb_tipodoc_fld',58,'Seleccione Tipo de Documento'),
	('addcustomer','nb_tipodoc_fld',59,'false'),
	('error','image',13,'strinrg'),
	('error','image',32,'image'),
	('error','image',35,'bootstrap-display'),
	('home','image',13,'string'),
	('home','image',32,'image'),
	('home','image',35,'bootstrap-display'),
	('login','Campo1',11,'true'),
	('login','Campo1',13,'string'),
	('login','Campo1',24,'Usuario'),
	('login','Campo2',6,'password'),
	('login','Campo2',9,'^[a-zA-Z0-9_]+$'),
	('login','Campo2',11,'true'),
	('login','Campo2',13,'string'),
	('login','Campo2',24,'Password'),
	('viewcustomer','nbd_person_id_fld',13,'string'),
	('viewcustomer','nbd_person_id_fld',24,'Id'),
	('viewcustomer','nbd_person_id_fld',36,'true'),
	('viewcustomer','nbd_person_tipo_fld',13,'string'),
	('viewcustomer','nbd_person_tipo_fld',24,'Tipo'),
	('viewcustomer','nbd_person_tipo_fld',36,'true'),
	('viewcustomer','nb_add_celular_fld',6,'phone'),
	('viewcustomer','nb_add_celular_fld',11,'false'),
	('viewcustomer','nb_add_celular_fld',13,'string'),
	('viewcustomer','nb_add_celular_fld',24,'Celular'),
	('viewcustomer','nb_add_city_fld',11,'false'),
	('viewcustomer','nb_add_city_fld',13,'integer'),
	('viewcustomer','nb_add_city_fld',24,'Municipio'),
	('viewcustomer','nb_add_city_fld',32,'select'),
	('viewcustomer','nb_add_city_fld',55,'../Events/ValoresCampo.php?campo=city'),
	('viewcustomer','nb_add_city_fld',58,'Seleccione Municipio'),
	('viewcustomer','nb_add_city_fld',59,'false'),
	('viewcustomer','nb_add_date_fld',11,'false'),
	('viewcustomer','nb_add_date_fld',13,'string'),
	('viewcustomer','nb_add_date_fld',24,'Fecha Creacion'),
	('viewcustomer','nb_add_date_fld',36,'true'),
	('viewcustomer','nb_add_direccion_fld',11,'false'),
	('viewcustomer','nb_add_direccion_fld',13,'string'),
	('viewcustomer','nb_add_direccion_fld',24,'Direccion'),
	('viewcustomer','nb_add_email_fld',6,'email'),
	('viewcustomer','nb_add_email_fld',11,'false'),
	('viewcustomer','nb_add_email_fld',13,'string'),
	('viewcustomer','nb_add_email_fld',24,'Email'),
	('viewcustomer','nb_add_telefono_fld',6,'phone'),
	('viewcustomer','nb_add_telefono_fld',11,'false'),
	('viewcustomer','nb_add_telefono_fld',13,'string'),
	('viewcustomer','nb_add_telefono_fld',24,'Telefono'),
	('viewcustomer','nb_add_user_fld',11,'false'),
	('viewcustomer','nb_add_user_fld',13,'string'),
	('viewcustomer','nb_add_user_fld',24,'Usuario Creacion'),
	('viewcustomer','nb_add_user_fld',36,'true'),
	('viewcustomer','nb_ciudadexp_fld',2,'nb_tipodoc_fld'),
	('viewcustomer','nb_ciudadexp_fld',11,'false'),
	('viewcustomer','nb_ciudadexp_fld',13,'integer'),
	('viewcustomer','nb_ciudadexp_fld',24,'Lugar de Expedicion'),
	('viewcustomer','nb_ciudadexp_fld',32,'select'),
	('viewcustomer','nb_ciudadexp_fld',55,'../Events/ValoresCampo.php?campo=city'),
	('viewcustomer','nb_ciudadexp_fld',58,'Seleccione Ciudad'),
	('viewcustomer','nb_ciudadexp_fld',59,'false'),
	('viewcustomer','nb_ciudadexp_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('viewcustomer','nb_estado_fld',11,'true'),
	('viewcustomer','nb_estado_fld',13,'integer'),
	('viewcustomer','nb_estado_fld',24,'Estado'),
	('viewcustomer','nb_estado_fld',32,'select'),
	('viewcustomer','nb_estado_fld',55,'../Events/ValoresCampo.php?campo=nb_estado_fld'),
	('viewcustomer','nb_estado_fld',58,'Seleccione Estado'),
	('viewcustomer','nb_estado_fld',59,'false'),
	('viewcustomer','nb_fechaexp_fld',2,'nb_tipodoc_fld'),
	('viewcustomer','nb_fechaexp_fld',6,'date'),
	('viewcustomer','nb_fechaexp_fld',24,'Fecha Expedicion'),
	('viewcustomer','nb_fechaexp_fld',56,'YYYY-MM-DD'),
	('viewcustomer','nb_fechaexp_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('viewcustomer','nb_fechanac_fld',2,'nb_tipodoc_fld'),
	('viewcustomer','nb_fechanac_fld',6,'date'),
	('viewcustomer','nb_fechanac_fld',24,'Fecha de Nacimiento'),
	('viewcustomer','nb_fechanac_fld',56,'YYYY-MM-DD'),
	('viewcustomer','nb_fechanac_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('viewcustomer','nb_mdf_date_fld',11,'false'),
	('viewcustomer','nb_mdf_date_fld',13,'string'),
	('viewcustomer','nb_mdf_date_fld',24,'Fecha Modificacion'),
	('viewcustomer','nb_mdf_date_fld',36,'true'),
	('viewcustomer','nb_mdf_user_fld',11,'false'),
	('viewcustomer','nb_mdf_user_fld',13,'string'),
	('viewcustomer','nb_mdf_user_fld',24,'Usuario Modificacion'),
	('viewcustomer','nb_mdf_user_fld',36,'true'),
	('viewcustomer','nb_nombre_fld',11,'true'),
	('viewcustomer','nb_nombre_fld',13,'string'),
	('viewcustomer','nb_nombre_fld',24,'Nombre/Razon Social'),
	('viewcustomer','nb_numerodoc_fld',11,'true'),
	('viewcustomer','nb_numerodoc_fld',13,'string'),
	('viewcustomer','nb_numerodoc_fld',24,'Numero Documento'),
	('viewcustomer','nb_observaciones_fld',11,'false'),
	('viewcustomer','nb_observaciones_fld',13,'string'),
	('viewcustomer','nb_observaciones_fld',20,'Ingrese observaciones generales'),
	('viewcustomer','nb_observaciones_fld',24,'Observaciones'),
	('viewcustomer','nb_observaciones_fld',32,'textarea'),
	('viewcustomer','nb_rlegal_fld',2,'nb_tipodoc_fld'),
	('viewcustomer','nb_rlegal_fld',11,'false'),
	('viewcustomer','nb_rlegal_fld',13,'string'),
	('viewcustomer','nb_rlegal_fld',24,'Representante Legal'),
	('viewcustomer','nb_rlegal_fld',60,'{\"nb_tipodoc_fld\": [\"3\"] }'),
	('viewcustomer','nb_sexo_fld',2,'nb_tipodoc_fld'),
	('viewcustomer','nb_sexo_fld',11,'false'),
	('viewcustomer','nb_sexo_fld',13,'integer'),
	('viewcustomer','nb_sexo_fld',24,'Sexo'),
	('viewcustomer','nb_sexo_fld',32,'select'),
	('viewcustomer','nb_sexo_fld',55,'../Events/ValoresCampo.php?campo=nb_sexo_fld'),
	('viewcustomer','nb_sexo_fld',58,'Seleccione Sexo'),
	('viewcustomer','nb_sexo_fld',59,'false'),
	('viewcustomer','nb_sexo_fld',60,'{\"nb_tipodoc_fld\": [\"1\",\"2\",\"4\",\"5\"] }'),
	('viewcustomer','nb_state_fld',11,'false'),
	('viewcustomer','nb_state_fld',13,'integer'),
	('viewcustomer','nb_state_fld',24,'Departamento'),
	('viewcustomer','nb_state_fld',32,'select'),
	('viewcustomer','nb_state_fld',55,'../Events/ValoresCampo.php?campo=state'),
	('viewcustomer','nb_state_fld',58,'Seleccione Departamento'),
	('viewcustomer','nb_state_fld',59,'false'),
	('viewcustomer','nb_tipodoc_fld',11,'true'),
	('viewcustomer','nb_tipodoc_fld',13,'integer'),
	('viewcustomer','nb_tipodoc_fld',24,'Tipo de Documento'),
	('viewcustomer','nb_tipodoc_fld',32,'select'),
	('viewcustomer','nb_tipodoc_fld',55,'../Events/ValoresCampo.php?campo=nb_tipodoc_fld'),
	('viewcustomer','nb_tipodoc_fld',58,'Seleccione Tipo de Documento'),
	('viewcustomer','nb_tipodoc_fld',59,'false');

/*!40000 ALTER TABLE `nb_forms_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_htmlattribute_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_htmlattribute_tbl`;

CREATE TABLE `nb_htmlattribute_tbl` (
  `nb_id_attribute_fld` int(11) NOT NULL DEFAULT '0',
  `nb_attribute_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_url_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_rel_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_descripcion_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_attribute_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_htmlattribute_tbl` WRITE;
/*!40000 ALTER TABLE `nb_htmlattribute_tbl` DISABLE KEYS */;

INSERT INTO `nb_htmlattribute_tbl` (`nb_id_attribute_fld`, `nb_attribute_fld`, `nb_url_fld`, `nb_type_fld`, `nb_rel_fld`, `nb_descripcion_fld`)
VALUES
	(1,'link','../Styles/nabu.css','text/css','stylesheet','Estilos Nabu'),
	(2,'link','../Images/logo.ico','image/x-icon','icon','Icono'),
	(3,'script','../Framework/jquery/dist/jquery.min.js','text/javascript',NULL,'Libreria Jquery'),
	(4,'script','../Framework/handlebars/handlebars.min.js','text/javascript',NULL,'Handlebars'),
	(5,'script','//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js','text/javascript',NULL,'Bootstrap'),
	(6,'link','../Framework/bootstrap/dist/css/bootstrap.min.css','text/css','stylesheet','Bootstrap'),
	(7,'link','../Framework/alpaca/dist/alpaca/bootstrap/alpaca.min.css','text/css','stylesheet','Alpaca'),
	(8,'script','../Framework/alpaca/dist/alpaca/bootstrap/alpaca.min.js','text/javascript',NULL,'Alpaca'),
	(9,'script','../Framework/mmenu/src/js/jquery.mmenu.min.js\" type=\"text/javascript','text/javascript',NULL,'Menu'),
	(10,'link','../Framework/mmenu/src/css/jquery.mmenu.all.css','text/css','stylesheet','Menu'),
	(11,'link','../Framework/mmenu/src/css/extensions/jquery.mmenu.iconbar.css','text/css','stylesheet','Menu'),
	(12,'link','../Styles/menuNabu.css','text/css','stylesheet','Menu'),
	(13,'link','../Framework/font-awesome/css/font-awesome.min.css','text/css','stylesheet','Menu'),
	(14,'link','../Framework/datatables/media/css/jquery.dataTables.min.css','text/css','text/css','Tables'),
	(15,'script','../Framework/datatables/media/js/jquery.dataTables.min.js','text/javascript',NULL,'Tables'),
	(16,'link','../Framework/Datagrid/lib/js/themes/cobo/jquery-ui.custom.css','text/css','stylesheet','Datagrid'),
	(17,'link','../Framework/Datagrid/lib/js/jqgrid/css/ui.jqgrid.css','text/css','stylesheet','Datagrid'),
	(18,'script','../Framework/Datagrid/lib/js/jqgrid/js/i18n/grid.locale-es.js','text/javascript',NULL,'Datagrid'),
	(19,'script','../Framework/Datagrid/lib/js/themes/jquery-ui.custom.min.js','text/javascript',NULL,'Datagrid'),
	(20,'script','../Framework/Datagrid/lib/js/jqgrid/js/jquery.jqGrid.min.js','text/javascript',NULL,'Datagrid'),
	(21,'script','../Framework/Chart.js/Chart.js','text/javascript',NULL,'Charts'),
	(22,'script','../Framework/jquery-ui/jquery-ui.min.js','text/javascript',NULL,'jQuery UI Support');

/*!40000 ALTER TABLE `nb_htmlattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_navigation_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_navigation_tbl`;

CREATE TABLE `nb_navigation_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_sec_fld` int(11) NOT NULL DEFAULT '0',
  `nb_parent_fld` int(11) NOT NULL DEFAULT '0',
  `nb_id_menu_fld` int(11) NOT NULL DEFAULT '0',
  `nb_descr_men_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_link_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_image_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_target_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT 'N',
  PRIMARY KEY (`nb_id_page_fld`,`nb_sec_fld`,`nb_parent_fld`,`nb_id_menu_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_navigation_tbl` WRITE;
/*!40000 ALTER TABLE `nb_navigation_tbl` DISABLE KEYS */;

INSERT INTO `nb_navigation_tbl` (`nb_id_page_fld`, `nb_sec_fld`, `nb_parent_fld`, `nb_id_menu_fld`, `nb_descr_men_fld`, `nb_link_fld`, `nb_image_fld`, `nb_target_fld`)
VALUES
	('addcustomer',1,0,1,'Home','home','fa fa-home','N'),
	('addcustomer',2,0,2,'Clientes',NULL,'fa fa-user','N'),
	('addcustomer',3,2,1,'Consultar Clientes','srccustomer','fa fa-search','N'),
	('addcustomer',4,2,2,'Ingresar Cliente','addcustomer','fa fa-plus-circle','N'),
	('addcustomer',5,2,3,'Modificar Cliente','viewcustomer','fa fa-pencil-square-o','N'),
	('addcustomer',6,0,3,'Ayuda',NULL,'fa fa-life-buoy','N'),
	('addcustomer',7,0,4,'Cerrar sesion','login','fa fa-sign-out','N'),
	('error',1,0,1,'Home','home','fa fa-home','N'),
	('home',1,0,1,'Home','home','fa fa-home','N'),
	('home',2,0,2,'Clientes',NULL,'fa fa-user','N'),
	('home',3,2,1,'Consultar Clientes','srccustomer','fa fa-search','N'),
	('home',4,2,2,'Ingresar Cliente','addcustomer','fa fa-plus-circle','N'),
	('home',5,2,3,'Modificar Cliente','viewcustomer','fa fa-pencil-square-o','N'),
	('home',6,0,3,'Ayuda',NULL,'fa fa-life-buoy','N'),
	('home',7,0,4,'Cerrar sesion','login','fa fa-sign-out','N'),
	('srccustomer',1,0,1,'Home','home','fa fa-home','N'),
	('srccustomer',2,0,2,'Clientes',NULL,'fa fa-user','N'),
	('srccustomer',3,2,1,'Consultar Clientes','srccustomer','fa fa-search','N'),
	('srccustomer',4,2,2,'Ingresar Cliente','addcustomer','fa fa-plus-circle','N'),
	('srccustomer',5,2,3,'Modificar Cliente','viewcustomer','fa fa-pencil-square-o','N'),
	('viewcustomer',7,0,4,'Cerrar sesion','login','fa fa-sign-out','N'),
	('viewcustomer',6,0,3,'Ayuda',NULL,'fa fa-life-buoy','N'),
	('viewcustomer',5,2,3,'Modificar Cliente','viewcustomer','fa fa-pencil-square-o','N'),
	('viewcustomer',4,2,2,'Ingresar Cliente','addcustomer','fa fa-plus-circle','N'),
	('viewcustomer',3,2,1,'Consultar Clientes','srccustomer','fa fa-search','N'),
	('viewcustomer',2,0,2,'Clientes',NULL,'fa fa-user','N'),
	('srccustomer',6,0,3,'Ayuda',NULL,'fa fa-life-buoy','N'),
	('srccustomer',7,0,4,'Cerrar sesion','login','fa fa-sign-out','N'),
	('viewcustomer',1,0,1,'Home','home','fa fa-home','N');

/*!40000 ALTER TABLE `nb_navigation_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_option_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_option_tbl`;

CREATE TABLE `nb_option_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_typealpaca_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_renderform_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_action_path` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_action_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_method_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_enctype_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_typealpaca_fld`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_option_tbl` WRITE;
/*!40000 ALTER TABLE `nb_option_tbl` DISABLE KEYS */;

INSERT INTO `nb_option_tbl` (`nb_id_page_fld`, `nb_typealpaca_fld`, `nb_renderform_fld`, `nb_action_path`, `nb_action_fld`, `nb_method_fld`, `nb_enctype_fld`)
VALUES
	('login','form','true','../Events/','validateUser','post',NULL),
	('error','image','false',NULL,NULL,NULL,NULL),
	('home','image','false',NULL,NULL,NULL,NULL),
	('addcustomer','wizard','true','../Events/','nabuSave','post',NULL),
	('viewcustomer','wizard','true',NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `nb_option_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_options_buttons_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_options_buttons_tbl`;

CREATE TABLE `nb_options_buttons_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_opt_form_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_click_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_opt_form_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_options_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_options_buttons_tbl` DISABLE KEYS */;

INSERT INTO `nb_options_buttons_tbl` (`nb_id_page_fld`, `nb_id_opt_form_fld`, `nb_value_fld`, `nb_title_fld`, `nb_click_fld`)
VALUES
	('login','reset','Limpiar','Limpiar',''),
	('login','submit','Aceptar','Aceptar',NULL);

/*!40000 ALTER TABLE `nb_options_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_pageattribute_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_pageattribute_tbl`;

CREATE TABLE `nb_pageattribute_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_attribute_fld` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nb_id_page_fld`,`nb_id_attribute_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_pageattribute_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pageattribute_tbl` DISABLE KEYS */;

INSERT INTO `nb_pageattribute_tbl` (`nb_id_page_fld`, `nb_id_attribute_fld`)
VALUES
	('addcustomer',1),
	('addcustomer',2),
	('addcustomer',3),
	('addcustomer',4),
	('addcustomer',5),
	('addcustomer',6),
	('addcustomer',7),
	('addcustomer',8),
	('addcustomer',9),
	('addcustomer',10),
	('addcustomer',12),
	('addcustomer',13),
	('addcustomer',15),
	('addcustomer',16),
	('addcustomer',17),
	('addcustomer',19),
	('addcustomer',22),
	('home',1),
	('home',2),
	('home',3),
	('home',4),
	('home',5),
	('home',6),
	('home',8),
	('home',9),
	('home',10),
	('home',12),
	('home',13),
	('home',22),
	('login',1),
	('login',2),
	('login',3),
	('login',4),
	('login',5),
	('login',6),
	('login',7),
	('login',8),
	('login',9),
	('login',10),
	('login',11),
	('login',12),
	('login',13),
	('login',14),
	('login',15),
	('login',16),
	('login',17),
	('login',18),
	('login',19),
	('login',20),
	('login',21),
	('login',22),
	('srccustomer',1),
	('srccustomer',2),
	('srccustomer',3),
	('srccustomer',6),
	('srccustomer',9),
	('srccustomer',10),
	('srccustomer',12),
	('srccustomer',13),
	('srccustomer',16),
	('srccustomer',17),
	('srccustomer',18),
	('srccustomer',19),
	('srccustomer',20),
	('viewcustomer',1),
	('viewcustomer',2),
	('viewcustomer',3),
	('viewcustomer',4),
	('viewcustomer',5),
	('viewcustomer',6),
	('viewcustomer',7),
	('viewcustomer',8),
	('viewcustomer',9),
	('viewcustomer',10),
	('viewcustomer',12),
	('viewcustomer',13),
	('viewcustomer',15),
	('viewcustomer',16),
	('viewcustomer',17),
	('viewcustomer',19),
	('viewcustomer',22);

/*!40000 ALTER TABLE `nb_pageattribute_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_pages_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_pages_tbl`;

CREATE TABLE `nb_pages_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_page_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_style_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_view_pa_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_data_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_page_trace_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_pages_tbl` WRITE;
/*!40000 ALTER TABLE `nb_pages_tbl` DISABLE KEYS */;

INSERT INTO `nb_pages_tbl` (`nb_id_page_fld`, `nb_page_title_fld`, `nb_page_style_fld`, `nb_page_type_fld`, `nb_page_view_pa_fld`, `nb_page_data_fld`, `nb_page_trace_fld`)
VALUES
	('addcustomer','Ingreso Clientes','forms','alpaca','bootstrap-create-horizontal',NULL,'false'),
	('error','Error',NULL,'alpaca','bootstrap-display',NULL,'false'),
	('home','Inicio Administradores',NULL,'alpaca','bootstrap-display',NULL,'false'),
	('login','Login de Usuario','formsSimple','alpaca','bootstrap-create',NULL,'false'),
	('srccustomer','Busqueda Cliente','dataGrids','datagrid',NULL,NULL,'false'),
	('viewcustomer','Consulta Cliente','forms','alpaca','bootstrap-edit-horizontal','nbd_customer_vw','false');

/*!40000 ALTER TABLE `nb_pages_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_pag_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_role_pag_tbl`;

CREATE TABLE `nb_role_pag_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`nb_id_role_fld`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_role_pag_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_pag_tbl` DISABLE KEYS */;

INSERT INTO `nb_role_pag_tbl` (`nb_id_role_fld`, `nb_id_page_fld`)
VALUES
	(1,'addcustomer'),
	(1,'error'),
	(1,'home'),
	(1,'login'),
	(1,'srccustomer'),
	(1,'viewcustomer');

/*!40000 ALTER TABLE `nb_role_pag_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_role_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_role_tbl`;

CREATE TABLE `nb_role_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nb_desc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_role_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_role_tbl` WRITE;
/*!40000 ALTER TABLE `nb_role_tbl` DISABLE KEYS */;

INSERT INTO `nb_role_tbl` (`nb_id_role_fld`, `nb_desc_fld`)
VALUES
	(1,'Maintainer'),
	(2,'Admin'),
	(3,'User');

/*!40000 ALTER TABLE `nb_role_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_schema_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_schema_tbl`;

CREATE TABLE `nb_schema_tbl` (
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_title_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_type_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_schema_tbl` WRITE;
/*!40000 ALTER TABLE `nb_schema_tbl` DISABLE KEYS */;

INSERT INTO `nb_schema_tbl` (`nb_id_page_fld`, `nb_title_fld`, `nb_description_fld`, `nb_type_fld`)
VALUES
	('addcustomer','Ingreso Clientes','','object'),
	('error','Error  login',NULL,'object'),
	('home','Menu Principal',NULL,'object'),
	('login','Bienvenidos',NULL,'object'),
	('viewcustomer','Consulta Clientes',NULL,'object');

/*!40000 ALTER TABLE `nb_schema_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_sequences_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_sequences_tbl`;

CREATE TABLE `nb_sequences_tbl` (
  `nb_id_table_field_fld` varchar(255) NOT NULL DEFAULT '',
  `nb_value_fld` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`nb_id_table_field_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

LOCK TABLES `nb_sequences_tbl` WRITE;
/*!40000 ALTER TABLE `nb_sequences_tbl` DISABLE KEYS */;

INSERT INTO `nb_sequences_tbl` (`nb_id_table_field_fld`, `nb_value_fld`)
VALUES
	('nbd_person_id_fld','3');

/*!40000 ALTER TABLE `nb_sequences_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_state_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_state_tbl`;

CREATE TABLE `nb_state_tbl` (
  `nb_id_country_fld` int(11) NOT NULL,
  `cc_codigoDept_fld` int(11) NOT NULL,
  `cc_descripc_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_country_fld`,`cc_codigoDept_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_state_tbl` WRITE;
/*!40000 ALTER TABLE `nb_state_tbl` DISABLE KEYS */;

INSERT INTO `nb_state_tbl` (`nb_id_country_fld`, `cc_codigoDept_fld`, `cc_descripc_fld`)
VALUES
	(57,1,'Otros Departamentos'),
	(57,5,'Antioquia'),
	(57,8,'Atlantico'),
	(57,11,'Santafe De Bogota'),
	(57,13,'Bolivar'),
	(57,15,'Boyaca'),
	(57,17,'Caldas'),
	(57,18,'Caqueta'),
	(57,19,'Cauca'),
	(57,20,'Cesar'),
	(57,23,'Cordoba'),
	(57,25,'Cundinamarca'),
	(57,27,'Choco'),
	(57,41,'Huila'),
	(57,44,'Guajira'),
	(57,47,'Magdalena'),
	(57,50,'Meta'),
	(57,52,'Narino'),
	(57,54,'Norte De Santander'),
	(57,63,'Quindio'),
	(57,66,'Risaralda'),
	(57,68,'Santander'),
	(57,70,'Sucre'),
	(57,73,'Tolima'),
	(57,76,'Valle'),
	(57,81,'Arauca'),
	(57,85,'Casanare'),
	(57,86,'Putumayo'),
	(57,88,'San Andres'),
	(57,91,'Amazonas'),
	(57,94,'Guainia'),
	(57,95,'Guaviare'),
	(57,97,'Vaupes'),
	(57,99,'Vichada');

/*!40000 ALTER TABLE `nb_state_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_table_fields_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_table_fields_tbl`;

CREATE TABLE `nb_table_fields_tbl` (
  `nb_id_table_fld` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `nb_id_fld` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_type_fld` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_long_fld` int(11) DEFAULT NULL,
  `nb_is_null_fld` varchar(1) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`,`nb_id_table_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_table_fields_tbl` WRITE;
/*!40000 ALTER TABLE `nb_table_fields_tbl` DISABLE KEYS */;

INSERT INTO `nb_table_fields_tbl` (`nb_id_table_fld`, `nb_id_fld`, `nb_type_fld`, `nb_long_fld`, `nb_is_null_fld`, `nb_description_fld`)
VALUES
	('nbd_address_tbl','nbd_person_id_fld','number',NULL,NULL,NULL),
	('nbd_customer_tbl','nbd_person_id_fld','number',NULL,NULL,NULL),
	('nbd_person_tbl','nbd_person_id_fld','number',NULL,NULL,NULL),
	('nbd_person_tbl','nbd_person_tipo_fld','number',NULL,NULL,NULL),
	('nbd_address_tbl','nb_add_celular_fld','string',NULL,NULL,NULL),
	('nbd_address_tbl','nb_add_city_fld','number',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_add_date_fld','date',NULL,NULL,NULL),
	('nbd_address_tbl','nb_add_direccion_fld','string',NULL,NULL,NULL),
	('nbd_address_tbl','nb_add_email_fld','string',NULL,NULL,NULL),
	('nbd_address_tbl','nb_add_telefono_fld','string',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_add_user_fld','string',NULL,NULL,NULL),
	('nbd_person_tbl','nb_ciudadexp_fld','number',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_estado_fld','number',NULL,NULL,NULL),
	('nbd_person_tbl','nb_fechaexp_fld','date',NULL,NULL,NULL),
	('nbd_person_tbl','nb_fechanac_fld','date',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_mdf_date_fld','date',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_mdf_user_fld','string',NULL,NULL,NULL),
	('nbd_person_tbl','nb_nombre_fld','string',NULL,NULL,NULL),
	('nbd_person_tbl','nb_numerodoc_fld','string',NULL,NULL,NULL),
	('nbd_customer_tbl','nb_observaciones_fld','string',NULL,NULL,NULL),
	('nbd_person_tbl','nb_rlegal_fld','string',NULL,NULL,NULL),
	('nbd_person_tbl','nb_sexo_fld','number',NULL,NULL,NULL),
	('nbd_address_tbl','nb_state_fld','number',NULL,NULL,NULL),
	('nbd_person_tbl','nb_tipodoc_fld','number',NULL,NULL,NULL);

/*!40000 ALTER TABLE `nb_table_fields_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_tables_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_tables_tbl`;

CREATE TABLE `nb_tables_tbl` (
  `nb_id_fld` varchar(100) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `nb_description_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_tables_tbl` WRITE;
/*!40000 ALTER TABLE `nb_tables_tbl` DISABLE KEYS */;

INSERT INTO `nb_tables_tbl` (`nb_id_fld`, `nb_description_fld`)
VALUES
	('ndb_address_tbl','Tabla de direcciones'),
	('ndb_customer_tbl','Tabla de clientes'),
	('ndb_person_tbl','Tabla de personas');

/*!40000 ALTER TABLE `nb_tables_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_value_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_value_tbl`;

CREATE TABLE `nb_value_tbl` (
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_value_fld` varchar(11) COLLATE latin1_spanish_ci NOT NULL DEFAULT '0',
  `nb_value_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_value_fld`,`nb_id_pr_schema_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_value_tbl` WRITE;
/*!40000 ALTER TABLE `nb_value_tbl` DISABLE KEYS */;

INSERT INTO `nb_value_tbl` (`nb_id_pr_schema_fld`, `nb_id_value_fld`, `nb_value_fld`)
VALUES
	('nb_estado_fld','0','Inactivo'),
	('nbd_person_tipo_fld','1','cliente'),
	('nb_estado_fld','1','Activo'),
	('nb_sexo_fld','1','Masculino'),
	('nb_tipodoc_fld','1','Cedula de Ciudadania'),
	('nbd_person_tipo_fld','2','propietario'),
	('nb_sexo_fld','2','Femenino'),
	('nb_tipodoc_fld','2','Tarjeta de Identidad'),
	('nbd_person_tipo_fld','3','transportador'),
	('nb_tipodoc_fld','3','NIT'),
	('nb_tipodoc_fld','4','Pasaporte'),
	('nb_tipodoc_fld','5','Cedula de Extranjeria');

/*!40000 ALTER TABLE `nb_value_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_bind_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_bind_tbl`;

CREATE TABLE `nb_wizard_bind_tbl` (
  `nb_id_wizard_bind` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_id_pr_schema_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_id_wizard_step` int(11) DEFAULT NULL,
  `nb_id_wizard_step_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_bind`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_bind_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_bind_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_bind_tbl` (`nb_id_wizard_bind`, `nb_id_page_fld`, `nb_id_pr_schema_fld`, `nb_id_wizard_step`, `nb_id_wizard_step_order`)
VALUES
	(1,'addcustomer','nb_tipodoc_fld',1,1),
	(2,'addcustomer','nb_numerodoc_fld',1,2),
	(3,'addcustomer','nb_ciudadexp_fld',1,3),
	(4,'addcustomer','nb_fechaexp_fld',1,4),
	(5,'addcustomer','nb_sexo_fld',1,5),
	(6,'addcustomer','nb_nombre_fld',1,6),
	(7,'addcustomer','nb_fechanac_fld',1,7),
	(8,'addcustomer','nb_rlegal_fld',1,8),
	(9,'addcustomer','nb_state_fld',2,1),
	(10,'addcustomer','nb_add_city_fld',2,2),
	(11,'addcustomer','nb_add_direccion_fld',2,3),
	(12,'addcustomer','nb_add_telefono_fld',2,4),
	(13,'addcustomer','nb_add_celular_fld',2,5),
	(14,'addcustomer','nb_add_email_fld',2,6),
	(15,'addcustomer','nb_estado_fld',3,3),
	(16,'addcustomer','nb_observaciones_fld',3,4),
	(21,'addcustomer','nbd_person_id_fld',3,1),
	(22,'addcustomer','nbd_person_tipo_fld',3,2),
	(1,'viewcustomer','nb_tipodoc_fld',1,1),
	(2,'viewcustomer','nb_numerodoc_fld',1,2),
	(3,'viewcustomer','nb_ciudadexp_fld',1,3),
	(4,'viewcustomer','nb_fechaexp_fld',1,4),
	(5,'viewcustomer','nb_sexo_fld',1,5),
	(6,'viewcustomer','nb_nombre_fld',1,6),
	(7,'viewcustomer','nb_fechanac_fld',1,7),
	(8,'viewcustomer','nb_rlegal_fld',1,8),
	(9,'viewcustomer','nb_state_fld',2,1),
	(10,'viewcustomer','nb_add_city_fld',2,2),
	(11,'viewcustomer','nb_add_direccion_fld',2,3),
	(12,'viewcustomer','nb_add_telefono_fld',2,4),
	(13,'viewcustomer','nb_add_celular_fld',2,5),
	(14,'viewcustomer','nb_add_email_fld',2,6),
	(15,'viewcustomer','nb_estado_fld',3,3),
	(16,'viewcustomer','nb_observaciones_fld',3,4),
	(21,'viewcustomer','nbd_person_id_fld',3,1),
	(22,'viewcustomer','nbd_person_tipo_fld',3,2);

/*!40000 ALTER TABLE `nb_wizard_bind_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_buttons_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_buttons_tbl`;

CREATE TABLE `nb_wizard_buttons_tbl` (
  `nb_id_wizard_button` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_button_name` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_wizard_button_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_validate` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_button_click` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_button`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_buttons_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_buttons_tbl` (`nb_id_wizard_button`, `nb_id_page_fld`, `nb_wizard_button_name`, `nb_wizard_button_title`, `nb_wizard_button_validate`, `nb_wizard_button_click`)
VALUES
	(1,'addcustomer','submit','Guardar',NULL,NULL),
	(2,'addcustomer','next','Siguiente',NULL,NULL),
	(3,'addcustomer','previous','Atras',NULL,NULL),
	(1,'viewcustomer','next','Siguiente',NULL,NULL),
	(2,'viewcustomer','previous','Atras',NULL,NULL);

/*!40000 ALTER TABLE `nb_wizard_buttons_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_steps_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_steps_tbl`;

CREATE TABLE `nb_wizard_steps_tbl` (
  `nb_id_wizard_step` int(11) NOT NULL,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT '',
  `nb_wizard_step_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_step_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard_step`,`nb_id_page_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_steps_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_steps_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_steps_tbl` (`nb_id_wizard_step`, `nb_id_page_fld`, `nb_wizard_step_title`, `nb_wizard_step_desc`)
VALUES
	(1,'addcustomer','1- Basicos','Informacion Basica Clientes'),
	(2,'addcustomer','2- Localizacion','Informacion de Contacto'),
	(3,'addcustomer','3- Negocio','Informacion Negocio'),
	(1,'viewcustomer','1- Basicos','Informacion Basica Clientes'),
	(2,'viewcustomer','2- Localizacion','Informacion de Contacto'),
	(3,'viewcustomer','3- Negocio','Informacion Negocio');

/*!40000 ALTER TABLE `nb_wizard_steps_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nb_wizard_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nb_wizard_tbl`;

CREATE TABLE `nb_wizard_tbl` (
  `nb_id_wizard` int(11) NOT NULL AUTO_INCREMENT,
  `nb_id_page_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_title` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_desc` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_wizard_show_progress` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nb_id_wizard`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nb_wizard_tbl` WRITE;
/*!40000 ALTER TABLE `nb_wizard_tbl` DISABLE KEYS */;

INSERT INTO `nb_wizard_tbl` (`nb_id_wizard`, `nb_id_page_fld`, `nb_wizard_title`, `nb_wizard_desc`, `nb_wizard_show_progress`)
VALUES
	(1,'addcustomer','','','true'),
	(2,'viewcustomer',NULL,NULL,'true');

/*!40000 ALTER TABLE `nb_wizard_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_address_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_address_tbl`;

CREATE TABLE `nbd_address_tbl` (
  `nbd_person_id_fld` int(11) NOT NULL,
  `nb_state_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_city_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_direccion_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_telefono_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_celular_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_email_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nbd_person_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_address_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_address_tbl` DISABLE KEYS */;

INSERT INTO `nbd_address_tbl` (`nbd_person_id_fld`, `nb_state_fld`, `nb_add_city_fld`, `nb_add_direccion_fld`, `nb_add_telefono_fld`, `nb_add_celular_fld`, `nb_add_email_fld`)
VALUES
	(2,'76','76834','CALLE 21N NUMERO 9A-105 APTO 202','3012657760','3012657760','carlosgc4@gmail.com'),
	(3,'0','0','','','',''),
	(4,'76','76001','CALLE 21N NUMERO 9A-105 APTO 202','3122339700','3122339700','lilianpalfonso@gmail.com');

/*!40000 ALTER TABLE `nbd_address_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_customer_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_customer_tbl`;

CREATE TABLE `nbd_customer_tbl` (
  `nbd_person_id_fld` int(11) NOT NULL,
  `nb_estado_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_observaciones_fld` blob,
  `nb_add_user_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_add_date_fld` datetime DEFAULT NULL,
  `nb_mdf_user_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nb_mdf_date_fld` datetime DEFAULT NULL,
  PRIMARY KEY (`nbd_person_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_customer_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_customer_tbl` DISABLE KEYS */;

INSERT INTO `nbd_customer_tbl` (`nbd_person_id_fld`, `nb_estado_fld`, `nb_observaciones_fld`, `nb_add_user_fld`, `nb_add_date_fld`, `nb_mdf_user_fld`, `nb_mdf_date_fld`)
VALUES
	(2,'1',X'5265666572656E636961646F','NABU','2015-10-09 22:02:42','NABU','2015-10-09 22:02:42'),
	(3,'1','','NABU','2015-10-09 22:04:23','NABU','2015-10-09 22:04:23'),
	(4,'1',X'726566657269646F','NABU','2015-10-10 01:23:52','NABU','2015-10-10 01:23:52');

/*!40000 ALTER TABLE `nbd_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_customer_vw
# ------------------------------------------------------------

DROP VIEW IF EXISTS `nbd_customer_vw`;

CREATE TABLE `nbd_customer_vw` (
   `nb_tipodoc_fld` VARCHAR(2) NULL DEFAULT NULL,
   `nb_numerodoc_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_ciudadexp_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_fechaexp_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_sexo_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_nombre_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_fechanac_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_rlegal_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_state_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_city_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_direccion_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_telefono_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_celular_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_email_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_estado_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_observaciones_fld` BLOB NULL DEFAULT NULL,
   `nb_add_user_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_add_date_fld` DATETIME NULL DEFAULT NULL,
   `nb_mdf_user_fld` VARCHAR(255) NULL DEFAULT NULL,
   `nb_mdf_date_fld` DATETIME NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table nbd_person_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_person_tbl`;

CREATE TABLE `nbd_person_tbl` (
  `nbd_person_id_fld` int(11) NOT NULL,
  `nbd_person_tipo_fld` int(11) DEFAULT NULL,
  `nb_tipodoc_fld` varchar(2) CHARACTER SET latin1 DEFAULT NULL,
  `nb_numerodoc_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_ciudadexp_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_fechaexp_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_sexo_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_nombre_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_fechanac_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `nb_rlegal_fld` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`nbd_person_id_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_person_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_person_tbl` DISABLE KEYS */;

INSERT INTO `nbd_person_tbl` (`nbd_person_id_fld`, `nbd_person_tipo_fld`, `nb_tipodoc_fld`, `nb_numerodoc_fld`, `nb_ciudadexp_fld`, `nb_fechaexp_fld`, `nb_sexo_fld`, `nb_nombre_fld`, `nb_fechanac_fld`, `nb_rlegal_fld`)
VALUES
	(2,1,'1','14800275','76834','2002-11-19 00:00:00','1','Carlos Alberto Garcia Cobo','1984-04-04 00:00:00',''),
	(3,1,'3','2323','0',NULL,'0','dfdf',NULL,'dfdf'),
	(4,1,'1','1037594925','5266','2007-06-06 00:00:00','2','Lilian Patricia Alfonso Marin','1989-06-03 00:00:00','');

/*!40000 ALTER TABLE `nbd_person_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_role_user_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_role_user_tbl`;

CREATE TABLE `nbd_role_user_tbl` (
  `nb_id_role_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nbd_id_user_fld` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`nb_id_role_fld`,`nbd_id_user_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_role_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_role_user_tbl` DISABLE KEYS */;

INSERT INTO `nbd_role_user_tbl` (`nb_id_role_fld`, `nbd_id_user_fld`)
VALUES
	(1,1);

/*!40000 ALTER TABLE `nbd_role_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table nbd_user_tbl
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nbd_user_tbl`;

CREATE TABLE `nbd_user_tbl` (
  `nbd_id_user_fld` int(11) NOT NULL AUTO_INCREMENT,
  `nbd_email_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  `nbd_password_fld` varchar(255) COLLATE latin1_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`nbd_id_user_fld`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

LOCK TABLES `nbd_user_tbl` WRITE;
/*!40000 ALTER TABLE `nbd_user_tbl` DISABLE KEYS */;

INSERT INTO `nbd_user_tbl` (`nbd_id_user_fld`, `nbd_email_fld`, `nbd_password_fld`)
VALUES
	(1,'nabu','81dc9bdb52d04dc20036dbd8313ed055');

/*!40000 ALTER TABLE `nbd_user_tbl` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for nbd_customer_vw with correct view syntax
# ------------------------------------------------------------

DROP TABLE `nbd_customer_vw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nbd_customer_vw`
AS SELECT
   `a`.`nb_tipodoc_fld` AS `nb_tipodoc_fld`,
   `a`.`nb_numerodoc_fld` AS `nb_numerodoc_fld`,
   `a`.`nb_ciudadexp_fld` AS `nb_ciudadexp_fld`,
   `a`.`nb_fechaexp_fld` AS `nb_fechaexp_fld`,
   `a`.`nb_sexo_fld` AS `nb_sexo_fld`,
   `a`.`nb_nombre_fld` AS `nb_nombre_fld`,
   `a`.`nb_fechanac_fld` AS `nb_fechanac_fld`,
   `a`.`nb_rlegal_fld` AS `nb_rlegal_fld`,
   `c`.`nb_state_fld` AS `nb_state_fld`,
   `c`.`nb_add_city_fld` AS `nb_add_city_fld`,
   `c`.`nb_add_direccion_fld` AS `nb_add_direccion_fld`,
   `c`.`nb_add_telefono_fld` AS `nb_add_telefono_fld`,
   `c`.`nb_add_celular_fld` AS `nb_add_celular_fld`,
   `c`.`nb_add_email_fld` AS `nb_add_email_fld`,
   `b`.`nb_estado_fld` AS `nb_estado_fld`,
   `b`.`nb_observaciones_fld` AS `nb_observaciones_fld`,
   `b`.`nb_add_user_fld` AS `nb_add_user_fld`,
   `b`.`nb_add_date_fld` AS `nb_add_date_fld`,
   `b`.`nb_mdf_user_fld` AS `nb_mdf_user_fld`,
   `b`.`nb_mdf_date_fld` AS `nb_mdf_date_fld`
FROM ((`nbd_person_tbl` `a` join `nbd_customer_tbl` `b`) join `nbd_address_tbl` `c`) where ((`a`.`nbd_person_id_fld` = `b`.`nbd_person_id_fld`) and (`b`.`nbd_person_id_fld` = `c`.`nbd_person_id_fld`));

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
