CREATE TABLE `AppUser` (
  `idUser` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nameUser` varchar(100) UNIQUE NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `idRole` int NOT NULL
);

CREATE TABLE `Role` (
  `idRole` int PRIMARY KEY AUTO_INCREMENT,
  `nameRol` varchar(100) NOT NULL
);

ALTER TABLE `AppUser` ADD FOREIGN KEY (`idRole`) REFERENCES `Role` (`idRole`);
