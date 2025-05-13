INSERT INTO `Role` (`roleName`) VALUES ('listener'), ('moderator');

INSERT INTO soundnest.AppUser (nameUser, password, email, idRole)
VALUES ('unaay20', '$2a$12$JBU0e5bDpDjdhNipE.k.a.hIXReLMe3qcuJ0h3GJZGNvlVi7DlGti', 'unaayjose@gmail.com', '2'),
('1', '$2a$10$4EhEyAirIGdY.FShS0LX0.rvuMn5IdJYeKoClVMWSVlFVexBkZyY6', 'zs22013698@estudiantes.uv.mx', '1'),
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
  idSongGenre,
  idSongExtension,
  idAppUser
)
VALUES (
  'Canción de Prueba',
  'cancion_prueba.mp3',
  180, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  1, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  2  -- id del usuario (asegúrate que coincida)
);