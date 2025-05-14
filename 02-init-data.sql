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
  's2', -- filename
  184, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  6, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  1  -- id del usuario (asegúrate que coincida)
),(
  'Ear of the tiger by Remaining person',
  's3', -- filename
  292, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  2, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  1  -- id del usuario (asegúrate que coincida)
),(
  'I Surivive by Victoria Gano',
  's4', -- filename
  194, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  1, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  2  -- id del usuario (asegúrate que coincida)
),(
  'amazed by ABCD',
  's5', -- filename
  244, -- duración en segundos
  NOW(), -- fecha de lanzamiento
  false,
  2, -- id del género (asegúrate que coincida)
  1, -- id de la extensión (asegúrate que coincida)
  2  -- id del usuario (asegúrate que coincida)
);