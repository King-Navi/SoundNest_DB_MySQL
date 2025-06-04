ALTER DATABASE soundnest CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


INSERT INTO `Role` (`roleName`) VALUES ('listener'), ('moderator');

SET NAMES utf8mb4;

INSERT INTO soundnest.AppUser (nameUser, password, email, idRole)
VALUES ('unaay20', '$2a$12$JBU0e5bDpDjdhNipE.k.a.hIXReLMe3qcuJ0h3GJZGNvlVi7DlGti', 'unaayjose@gmail.com', '2'),
('navi_simple', '$2a$10$4EhEyAirIGdY.FShS0LX0.rvuMn5IdJYeKoClVMWSVlFVexBkZyY6', 'zs22013698peppegriññp@estudiantes.uv.mx', '1'),
('navi_mod', '$2a$10$SoDa1adqsa1wT7VDNmJ7o.EfTsjB2xSsIMolrEItNmR8gIBzvlP/i', 'zs22013698@estudiantes.uv.mx', '2'),
('lipa_dua', '$2a$10$N78WqXKH6eqXOiipGqqJJ.jnDZJSNztl3sTq8/55o6zNqVbSUme5q', 'lipadua@estudiantes.uv.mx', '1'),
('ow', '$2a$10$Q3La7PirtltGkKmMb6t4cu5dP5HxltE9MOYXOHcQotQxOLcy.PYuG', 'ow@estudiantes.uv.mx', '1'),
('nc_lion', '$2a$10$spjY29QvOAetlG38kgGjuuAqj4p15GjlMGtLjkFnx4xAEwD3g/v9u', 'nc_lion@estudiantes.uv.mx', '1')
;

INSERT INTO SongGenre (genreName) VALUES
('Pop'),
('Rock'),
('Jazz'),
('Blues'),
('Classical'),
('Hip Hop / Rap'),
('R&B'),
('Soul'),
('Funk'),
('Disco'),
('Country'),
('Reggae'),
('Electronic / Dance'),
('Salsa'),
('Merengue'),
('Bachata'),
('Cumbia'),
('Reggaetón'),
('Folk'),
('Metal'),
('Indie'),
('World Music'),
('Banda'),
('Corridos Tumbados'),
('Trap'),
('K-pop'),
('Latin Pop'),
('Punk'),
('Alternative'),
('Lo-fi');

INSERT INTO SongExtension (extensionName) VALUES
('mp3'),
('wav');


INSERT INTO Song (songName, fileName, durationSeconds, releaseDate, isDeleted, idSongGenre, idSongExtension, idAppUser)
VALUES
('Old Rules', 's1', 209, NOW(), false, 1, 1, 4),
('bIEN DURO', 's2', 126, NOW(), false, 7, 1, 5),
('taka_taka', 's3', 82, NOW(), false, 8, 1, 5),
('azotaea', 's4', 80, NOW(), false, 1, 1, 5),
('bandida', 's5', 100, NOW(), false, 9, 1, 5),
('Amargura [NOT KAROL G]', 's6', 160, NOW(), false, 2, 1, 5),
('adios', 's7', 153, NOW(), false, 10, 1, 5),
('apretaita', 's8', 98, NOW(), false, 2, 1, 5),
('afrodisiaco', 's9', 87, NOW(), false, 2, 1, 5),
('Neon Rebellion', 's10', 160, NOW(), false, 19, 1, 6),
('Digital Ghost', 's11', 87, NOW(), false, 16, 1, 6),
('Chrome Blood', 's12', 160, NOW(), false, 15, 1, 6),

('venice-beach', 's13', 194, NOW(), false, 15, 1, 4),
('background', 's14', 154, NOW(), false, 3, 1, 5),
('we made it', 's15', 162, NOW(), false, 4, 1, 6),
('happy-day', 's16', 108, NOW(), false, 5, 1, 4),
('inspiring happy violins', 's17', 73, NOW(), false, 6, 1, 4),
('best background', 's18', 36, NOW(), false, 7, 1, 5),
('motivation background', 's19', 138, NOW(), false, 8, 1, 6),
('bangla', 's20', 43, NOW(), false, 9, 1, 4),
('tokyocafe', 's21', 153, NOW(), false, 10, 1, 5),
('dancing in the stardust', 's22', 118, NOW(), false, 11, 1, 6),
('cold sad pianos', 's23', 141, NOW(), false, 12, 1, 4),
('hustler and player', 's24', 120, NOW(), false, 13, 1, 5);


INSERT INTO SongPhoto (fileName, extension, createdAt, idSong)
VALUES
('song-1', 'jpg', NOW(), 1),
('song-2', 'jpg', NOW(), 2),
('song-3', 'jpg', NOW(), 3),
('song-4', 'jpg', NOW(), 4),
('song-5', 'jpg', NOW(), 5),
('song-6', 'jpg', NOW(), 6),
('song-7', 'jpg', NOW(), 7),
('song-8', 'jpg', NOW(), 8),
('song-9', 'jpg', NOW(), 9),
('song-10', 'jpeg', NOW(), 10),
('song-11', 'jpeg', NOW(), 11),
('song-12', 'jpeg', NOW(), 12),
('song-13', 'jpg', NOW(), 13),
('song-14', 'jpg', NOW(), 14),
('song-15', 'jpg', NOW(), 15),
('song-16', 'jpg', NOW(), 16),
('song-17', 'jpg', NOW(), 17),
('song-18', 'jpg', NOW(), 18),
('song-19', 'jpg', NOW(), 19),
('song-20', 'png', NOW(), 20),
('song-21', 'jpg', NOW(), 21),
('song-22', 'jpg', NOW(), 22),
('song-23', 'jpg', NOW(), 23),
('song-24', 'jpeg', NOW(), 24);

-- FEBRERO 2025
INSERT INTO Visualization (playCount, period, idSong) VALUES
(50, '2025-02-05', 1),
(30, '2025-02-06', 2),
(20, '2025-02-07', 3),
(60, '2025-02-08', 4),
(90, '2025-02-09', 5),
(25, '2025-02-10', 6),
(40, '2025-02-11', 7),
(15, '2025-02-12', 8),
(100, '2025-02-13', 9),
(70, '2025-02-14', 10),
(55, '2025-02-15', 11),
(35, '2025-02-16', 12),
(65, '2025-02-17', 13),
(80, '2025-02-18', 14);

-- MARZO 2025
INSERT INTO Visualization (playCount, period, idSong) VALUES
(90, '2025-03-01', 1),
(75, '2025-03-02', 2),
(50, '2025-03-03', 3),
(100, '2025-03-04', 4),
(60, '2025-03-05', 5),
(30, '2025-03-06', 6),
(45, '2025-03-07', 7),
(70, '2025-03-08', 8),
(150, '2025-03-09', 9),
(200, '2025-03-10', 10),
(180, '2025-03-11', 11),
(160, '2025-03-12', 12),
(95, '2025-03-13', 15),
(88, '2025-03-14', 16);

-- ABRIL 2025
INSERT INTO Visualization (playCount, period, idSong) VALUES
(120, '2025-04-01', 1),
(95, '2025-04-02', 2),
(65, '2025-04-03', 3),
(110, '2025-04-04', 4),
(140, '2025-04-05', 5),
(75, '2025-04-06', 6),
(35, '2025-04-07', 7),
(60, '2025-04-08', 8),
(200, '2025-04-09', 9),
(175, '2025-04-10', 10),
(145, '2025-04-11', 11),
(135, '2025-04-12', 12),
(85, '2025-04-13', 17),
(100, '2025-04-14', 18),
(90, '2025-04-15', 19);

-- MAYO 2025
INSERT INTO Visualization (playCount, period, idSong) VALUES
(160, '2025-05-05', 13),
(140, '2025-05-06', 14),
(110, '2025-05-07', 15),
(95, '2025-05-08', 16),
(105, '2025-05-09', 17),
(130, '2025-05-10', 18),
(90, '2025-05-11', 19),
(115, '2025-05-12', 20),
(125, '2025-05-13', 21),
(85, '2025-05-14', 22),
(75, '2025-05-15', 23),
(190, '2025-05-16', 24);


USE soundnest;

-- Procedimiento para ver las X canciones más escuchadas de un usuario
DELIMITER $$
CREATE PROCEDURE GetTopSongsByUser(
    IN p_idUser INT,
    IN p_Limit INT
)
BEGIN
    SELECT
        S.songName,
        SUM(V.playCount) AS totalPlayCount
    FROM
        Song S
    JOIN
        Visualization V ON S.idSong = V.idSong
    WHERE
        S.idAppUser = p_idUser
    GROUP BY
        S.idSong, S.songName
    ORDER BY
        totalPlayCount DESC
    LIMIT p_Limit;
END$$
DELIMITER ;

-- Procedimiento para ver las X canciones más escuchadas globales
DELIMITER $$
CREATE PROCEDURE GetTopGlobalSongs(
    IN p_Limit INT
)
BEGIN
    SELECT
        S.songName,
        SUM(V.playCount) AS totalPlayCount
    FROM
        Song S
    JOIN
        Visualization V ON S.idSong = V.idSong
    GROUP BY
        S.idSong, S.songName
    ORDER BY
        totalPlayCount DESC
    LIMIT p_Limit;
END$$
DELIMITER ;

-- Procedimiento para ver los X géneros más escuchados globales
DELIMITER $$
CREATE PROCEDURE GetTopGlobalGenres(
    IN p_Limit INT
)
BEGIN
    SELECT
        SG.genreName,
        SUM(V.playCount) AS totalPlayCount
    FROM
        SongGenre SG
    JOIN
        Song S ON SG.idSongGenre = S.idSongGenre
    JOIN
        Visualization V ON S.idSong = V.idSong
    GROUP BY
        SG.genreName
    ORDER BY
        totalPlayCount DESC
    LIMIT p_Limit;
END$$
DELIMITER ;
