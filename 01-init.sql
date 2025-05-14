CREATE TABLE `AppUser` (
  `idUser` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nameUser` varchar(100) UNIQUE NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) UNIQUE NOT NULL,
  `idRole` int NOT NULL
);

CREATE TABLE `Photo` (
  `idPhoto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fileName` varchar(100) NOT NULL UNIQUE,
  `extension` varchar(50) NOT NULL,
  `createdAt` DATETIME NOT NULL,
  `idUser` int NOT NULL
);

CREATE TABLE `Role` (
  `idRole` int PRIMARY KEY AUTO_INCREMENT,
  `roleName` varchar(100) UNIQUE NOT NULL
);

CREATE TABLE `Song` (
  `idSong` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `songName` varchar(100) NOT NULL,
  `fileName` VARCHAR(255) UNIQUE NOT NULL,
  `durationSeconds` int NOT NULL,
  `releaseDate` DATETIME NOT NULL,
  `isDeleted` boolean NOT NULL,
  `idSongGenre` int NOT NULL,
  `idSongExtension` int NOT NULL,
  `idAppUser` int NOT NULL
);

CREATE TABLE `SongPhoto` (
  `idSongPhoto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fileName` varchar(100) UNIQUE NOT NULL,
  `extension` varchar(50) NOT NULL,
  `createdAt` DATETIME NOT NULL,
  `idSong` int NOT NULL
);

CREATE TABLE `SongExtension` (
  `idSongExtension` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `extensionName` varchar(70) UNIQUE NOT NULL
);

CREATE TABLE `Visualization` (
  `idVisualizations` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `playCount` int NOT NULL,
  `period` DATE NOT NULL,
  `idSong` int NOT NULL
);

CREATE TABLE `SongGenre` (
  `idSongGenre` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `genreName` VARCHAR(100)
);

ALTER TABLE `AppUser` ADD FOREIGN KEY (`idRole`) REFERENCES `Role` (`idRole`);

ALTER TABLE `Photo` ADD FOREIGN KEY (`idUser`) REFERENCES `AppUser` (`idUser`);

ALTER TABLE `Song` ADD FOREIGN KEY (`idSongGenre`) REFERENCES `SongGenre` (`idSongGenre`);

ALTER TABLE `Song` ADD FOREIGN KEY (`idSongExtension`) REFERENCES `SongExtension` (`idSongExtension`);

ALTER TABLE `Song` ADD FOREIGN KEY (`idAppUser`) REFERENCES `AppUser` (`idUser`);

ALTER TABLE `SongPhoto` ADD FOREIGN KEY (`idSong`) REFERENCES `Song` (`idSong`);

ALTER TABLE `Visualization` ADD FOREIGN KEY (`idSong`) REFERENCES `Song` (`idSong`);
