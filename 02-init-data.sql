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


INSERT INTO Song (
  songName,
  fileName,
  durationSeconds,
  releaseDate,
  isDeleted,
  idSongGenre,
  idSongExtension,
  idAppUser
)
VALUES (
  'Old Rules', -- Song name
  's1', -- filename
  209, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  1, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  4  -- id del usuario (asegúrate que coincida)
),(
  'bIEN DURO',
  's2', 
  126, 
  NOW(), 
  false,
  7, 
  1, 
  5  
),(
  'taka_taka',
  's3', 
  82, 
  NOW(), 
  false,
  8, 
  1, 
  5 
),(
  'azotaea',
  's4', 
  80, 
  NOW(), 
  false,
  1,
  1, 
  5  
),(
  'bandida',
  's5', 
  100, 
  NOW(), 
  false,
  9, 
  1, 
  5  
),(
  'Amargura [NOT KAROL G]',
  's6', 
  160, 
  NOW(), 
  false,
  2, 
  1, 
  5  
),(
  'adios',
  's7', 
  153, 
  NOW(), 
  false,
  10, 
  1, 
  5  
),(
  'apretaita',
  's8', 
  98, 
  NOW(), 
  false,
  2, 
  1, 
  5  
),(
  'afrodisiaco',
  's9', 
  87, 
  NOW(), 
  false,
  2, 
  1, 
  5  
),(
  'Neon Rebellion',
  's10', 
  160, 
  NOW(), 
  false,
  19, 
  1, 
  6  
),(
  'Digital Ghost',
  's11', 
  87, 
  NOW(), 
  false,
  16, 
  1, 
  6  
),(
  'Chrome Blood',
  's12', 
  160, 
  NOW(), 
  false,
  15, 
  1, 
  6  
);

INSERT INTO SongPhoto (
  fileName, extension, createdAt, idSong
)
VALUES (
  'song-1', 'jpg', NOW(), 1
),
(
  'song-2', 'jpg', NOW(), 2
),
(
  'song-3', 'jpg', NOW(), 3
),
(
  'song-4', 'jpg', NOW(), 4
),
(
  'song-5', 'jpg', NOW(), 5
),
(
  'song-6', 'jpg', NOW(), 6
),
(
  'song-7', 'jpg', NOW(), 7
),
(
  'song-8', 'jpg', NOW(), 8
),
(
  'song-9', 'jpg', NOW(), 9
),
(
  'song-10', 'jpeg', NOW(), 10
),
(
  'song-11', 'jpeg', NOW(), 11
),
(
  'song-12', 'jpeg', NOW(), 12
);

INSERT INTO Visualization (playCount, period, idSong)
VALUES 
(100, '2025-05-01', 1),
(150, '2025-05-02', 1),
(75, '2025-05-01', 2),
(50, '2025-05-03', 2),
(120, '2025-05-01', 3),
(200, '2025-05-04', 4),
(90, '2025-05-02', 5),
(30, '2025-05-01', 6),
(60, '2025-05-03', 7),
(15, '2025-05-04', 8),
(300, '2025-05-01', 9),
(240, '2025-05-02', 10),
(180, '2025-05-03', 11),
(400, '2025-05-04', 12);


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
