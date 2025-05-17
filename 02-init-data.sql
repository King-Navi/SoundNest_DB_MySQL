ALTER DATABASE soundnest CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


INSERT INTO `Role` (`roleName`) VALUES ('listener'), ('moderator');

SET NAMES utf8mb4;

INSERT INTO soundnest.AppUser (nameUser, password, email, idRole)
VALUES ('unaay20', '$2a$12$JBU0e5bDpDjdhNipE.k.a.hIXReLMe3qcuJ0h3GJZGNvlVi7DlGti', 'unaayjose@gmail.com', '2'),
('1', '$2a$10$4EhEyAirIGdY.FShS0LX0.rvuMn5IdJYeKoClVMWSVlFVexBkZyY6', 'zs22013698peppegriññp@estudiantes.uv.mx', '1'),
('2', '$2a$10$SoDa1adqsa1wT7VDNmJ7o.EfTsjB2xSsIMolrEItNmR8gIBzvlP/i', 'zs22013698aa@estudiantes.uv.mx', '2')
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
  'Old Rules by Lipa Dua', -- Song name
  's1', -- filename
  209, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  1, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  1  -- id del usuario (asegúrate que coincida)
),(
  'IAM by Trueno 2',
  's2', 
  184, 
  NOW(), 
  false,
  6, 
  1, 
  1  
),(
  'Ear of the tiger by Remaining person',
  's3', 
  292, 
  NOW(), 
  false,
  2, 
  1, 
  1 
),(
  'I Surivive by Victoria Gano',
  's4', 
  194, 
  NOW(), 
  false,
  1,
  1, 
  2  
),(
  'amazed by ABCD',
  's5', 
  244, 
  NOW(), 
  false,
  2, 
  1, 
  2  
);

INSERT INTO SongPhoto (
  fileName, extension, createdAt, idSong
)
VALUES (
  'song-1', 'jpg', NOW(), 1
);

INSERT INTO SongPhoto (
  fileName, extension, createdAt, idSong
)
VALUES (
  'song-2', 'jpg', NOW(), 2
);