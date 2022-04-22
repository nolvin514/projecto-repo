CREATE TABLE `repo`.`vehiculos` (
  `idcarro` BIGINT(8) NOT NULL AUTO_INCREMENT,
  `placa` varchar(15) NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `anio` int(4) NULL,
  `vin` VARCHAR(17) NULL,
  PRIMARY KEY (`idcarro`));
