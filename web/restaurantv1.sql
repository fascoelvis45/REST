/*
SQLyog Community v8.53 
MySQL - 5.5.27 : Database - restaurante
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`restaurante` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `restaurante`;

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `categoria` */

insert  into `categoria`(`id`,`nombre`,`estado`) values ('1','Caldos','1'),('2','Segundos','1'),('3','Gaseosas','1');

/*Table structure for table `mesa` */

DROP TABLE IF EXISTS `mesa`;

CREATE TABLE `mesa` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `numero` varchar(20) DEFAULT NULL,
  `capacidad` varchar(20) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mesa` */

insert  into `mesa`(`id`,`numero`,`capacidad`,`estado`) values ('1','1','4','1'),('2','2','4','1'),('3','3','4','1'),('4','4','4','1'),('5','5','4','1'),('6','6','4','1');

/*Table structure for table `pedido` */

DROP TABLE IF EXISTS `pedido`;

CREATE TABLE `pedido` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `fecha` varchar(20) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `id_mesa` varchar(20) DEFAULT NULL,
  `id_usuario` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_mesa` (`id_mesa`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`id_mesa`) REFERENCES `mesa` (`id`),
  CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pedido` */

insert  into `pedido`(`id`,`fecha`,`estado`,`id_mesa`,`id_usuario`) values ('1','24/02/2016','1','1','u1'),('2','24/02/2016','1','2','u1');

/*Table structure for table `pedido_destalle` */

DROP TABLE IF EXISTS `pedido_destalle`;

CREATE TABLE `pedido_destalle` (
  `id_pedido` varchar(20) NOT NULL,
  `id_producto` varchar(20) NOT NULL,
  `cantidad_producto` varchar(20) NOT NULL,
  `precio_unitario` varchar(20) NOT NULL,
  `precio_total` varchar(20) NOT NULL,
  `igv_unitario` varchar(20) NOT NULL,
  `igv_total` varchar(20) NOT NULL,
  `estado_pedido` varchar(1) NOT NULL,
  `estado_preparacion` varchar(1) NOT NULL,
  `estado_entrega` varchar(1) NOT NULL,
  `estado_cobro` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pedido_destalle` */

insert  into `pedido_destalle`(`id_pedido`,`id_producto`,`cantidad_producto`,`precio_unitario`,`precio_total`,`igv_unitario`,`igv_total`,`estado_pedido`,`estado_preparacion`,`estado_entrega`,`estado_cobro`) values ('1','1','1','10','10','1.8','1.8','1','0','0','0'),('1','2','1','7','7','1.6','1.6','1','0','0','0');

/*Table structure for table `pedido_mesa` */

DROP TABLE IF EXISTS `pedido_mesa`;

CREATE TABLE `pedido_mesa` (
  `id` varchar(20) NOT NULL,
  `id_pedido` varchar(20) DEFAULT NULL,
  `id_mesa` varchar(20) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pedido_mesa` */

insert  into `pedido_mesa`(`id`,`id_pedido`,`id_mesa`,`estado`) values ('1','1','1','1'),('2','1','2','1'),('3','1','3','1'),('4','2','1','0'),('5','2','2','0'),('6','3','1','0'),('7','3','2','0'),('8','4','1','0'),('9','5','1','0');

/*Table structure for table `persona_dato` */

DROP TABLE IF EXISTS `persona_dato`;

CREATE TABLE `persona_dato` (
  `id` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ap_paterno` varchar(20) NOT NULL,
  `ap_materno` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `persona_dato` */

insert  into `persona_dato`(`id`,`nombre`,`ap_paterno`,`ap_materno`) values ('1','Elvis','Ali','Vilca'),('2','admin','admin','admin');

/*Table structure for table `personas_dato` */

DROP TABLE IF EXISTS `personas_dato`;

CREATE TABLE `personas_dato` (
  `id` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ap_paterno` varchar(20) NOT NULL,
  `ap_materno` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `personas_dato` */

/*Table structure for table `producto` */

DROP TABLE IF EXISTS `producto`;

CREATE TABLE `producto` (
  `id` varchar(20) NOT NULL DEFAULT '',
  `nombre` varchar(20) DEFAULT NULL,
  `precio` varchar(20) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `id_categoria` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `producto` */

insert  into `producto`(`id`,`nombre`,`precio`,`estado`,`id_categoria`) values ('1','cebiche','10','1','2'),('2','Caldo De Gallina','7','1','1'),('3','CocaCola 700ml','2','1','3');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` varchar(20) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_persona` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`usuario`,`password`,`id_persona`) values ('u1','elvis_f45','123','1');

/*Table structure for table `usuario_rol` */

DROP TABLE IF EXISTS `usuario_rol`;

CREATE TABLE `usuario_rol` (
  `id_usuario` varchar(20) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usuario_rol` */

insert  into `usuario_rol`(`id_usuario`,`rol`,`estado`) values ('u1','MOZO',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
