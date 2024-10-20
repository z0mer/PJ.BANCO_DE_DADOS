-- Liste o título de todas as músicas e suas durações.
SELECT titulo, duracao_segundos
FROM Musica;

-- Encontre o nome de todos os artistas que têm mais de 5 músicas em seu repertório.
SELECT a.nome
FROM Artista a
JOIN artista_musica ma ON a.id_artista = ma.id_artista
GROUP BY a.id_artista, a.nome
HAVING COUNT(ma.id_musica) > 5;

-- Quais são os títulos dos discos lançados após 2020?
SELECT titulo
FROM Disco
WHERE data_lancamento > '2020-12-31';

-- Liste os títulos das músicas e os nomes dos artistas que as interpretam, ordenados pelo título da música.
SELECT m.titulo AS Musica, a.nome AS Artista
FROM Musica m
JOIN Artista_Musica ma ON m.id_musica = ma.id_musica
JOIN Artista a ON ma.id_artista = a.id_artista
ORDER BY m.titulo;

-- Encontre os títulos das playlists que contêm a música com o título 'Imagine'.
SELECT DISTINCT pl.titulo
FROM Playlist pl
JOIN Playlist_Musica pm ON pl.id_playlist = pm.id_playlist
JOIN Musica m ON pm.id_musica = m.id_musica
WHERE m.titulo = 'Imagine';

-- Liste os usuários que criaram playlists que contêm músicas do disco 'Abbey Road'.
SELECT DISTINCT u.nome
FROM Usuario u
JOIN Playlist pl ON u.id_usuario = pl.id_usuario
JOIN Playlist_Musica pm ON pl.id_playlist = pm.id_playlist
JOIN Musica m ON pm.id_musica = m.id_musica
JOIN Disco d ON m.id_disco = d.id_disco
WHERE d.titulo = 'Abbey Road';

-- Qual é a duração média das músicas de um artista específico?
  -- Utilizamos a artista "Adele", que possui o id 3.
SELECT AVG(m.duracao_segundos) AS DuracaoMedia
FROM Musica m
JOIN artista_musica ma ON m.id_musica = ma.id_musica
WHERE ma.id_artista = 3;

-- Encontre todos os artistas que não têm músicas.
SELECT a.nome
FROM Artista a
LEFT JOIN artista_musica ma ON a.id_artista = ma.id_artista
WHERE ma.id_artista IS NULL;

-- Liste todos os discos que contêm mais de 10 músicas.
  -- Não temos nenhum disco com mais de 10 músicas, então deixamos o código configurado para mostrar
  -- o disco que possui mais de 2 músicas.
SELECT d.titulo
FROM Disco d
JOIN Musica m ON d.id_disco = m.id_disco
GROUP BY d.id_disco, d.titulo
HAVING COUNT(m.id_musica) > 2;

-- Quais são os nomes dos artistas que têm discos lançados antes de 2010 e que têm músicas na playlist 'Top 50'?
SELECT DISTINCT a.nome
FROM Artista a
JOIN Disco d ON a.id_artista = d.id_artista
JOIN Musica m ON d.id_disco = m.id_disco
JOIN artista_musica ma ON m.id_musica = ma.id_musica
JOIN Playlist_Musica pm ON m.id_musica = pm.id_musica
JOIN Playlist pl ON pm.id_playlist = pl.id_playlist
WHERE d.data_lancamento < '2010-01-01'
  AND pl.titulo = 'Top 50';

-- Quais músicas são interpretadas por mais de um artista?
SELECT m.titulo
FROM Musica m
JOIN artista_musica ma ON m.id_musica = ma.id_musica
GROUP BY m.id_musica, m.titulo
HAVING COUNT(ma.id_artista) > 1;

-- Liste os títulos das músicas que aparecem em mais de uma playlist.
SELECT m.titulo
FROM Musica m
JOIN Playlist_Musica pm ON m.id_musica = pm.id_musica
GROUP BY m.id_musica, m.titulo
HAVING COUNT(pm.id_playlist) > 1;]

-- Encontre os nomes dos usuários que têm playlists que incluem a música 'Bohemian Rhapsody'.
SELECT DISTINCT u.nome
FROM Usuario u
JOIN Playlist pl ON u.id_usuario = pl.id_usuario
JOIN Playlist_Musica pm ON pl.id_playlist = pm.id_playlist
JOIN Musica m ON pm.id_musica = m.id_musica
WHERE m.titulo = 'Bohemian Rhapsody';

-- Qual é o título da música mais longa do disco 'Dark Side of the Moon'?
  -- Não temos nenhum disco chamado "Dark Side of the Moon", então deixamos o código configurado para mostrar
  -- o disco '1989'.
SELECT m.titulo
FROM Musica m
JOIN Disco d ON m.id_disco = d.id_disco
WHERE d.titulo = '1989'
ORDER BY m.duracao_segundos DESC
LIMIT 1;

-- Liste todos os discos lançados por um artista específico em um determinado ano.
SELECT d.titulo
FROM Disco d
WHERE d.id_artista = 4
  AND EXTRACT(YEAR FROM d.data_lancamento) = 2015;

-- Quais são os nomes dos artistas que têm músicas em playlists criadas por um usuário específico?
SELECT DISTINCT a.nome
FROM Artista a
JOIN artista_musica ma ON a.id_artista = ma.id_artista
JOIN Musica m ON ma.id_musica = m.id_musica
JOIN Playlist_Musica pm ON m.id_musica = pm.id_musica
JOIN Playlist pl ON pm.id_playlist = pl.id_playlist
WHERE pl.id_usuario = 1;

-- Encontre a lista de músicas que não estão em nenhuma playlist.
SELECT m.titulo
FROM Musica m
LEFT JOIN Playlist_Musica pm ON m.id_musica = pm.id_musica
WHERE pm.id_musica IS NULL;

-- Liste os títulos das músicas e os nomes dos artistas que têm mais de 3 músicas em uma mesma playlist.
SELECT m.titulo, a.nome
FROM Musica m
JOIN artista_musica ma ON m.id_musica = ma.id_musica
JOIN Artista a ON ma.id_artista = a.id_artista
JOIN Playlist_Musica pm ON m.id_musica = pm.id_musica
GROUP BY m.id_musica, m.titulo, a.nome
HAVING COUNT(pm.id_playlist) > 3;

-- Quais são os discos que contêm músicas de artistas que têm pelo menos 2 discos lançados?
SELECT DISTINCT d1.titulo
FROM Disco d1
JOIN Musica m ON d1.id_disco = m.id_disco
JOIN artista_musica ma ON m.id_musica = ma.id_musica
JOIN Artista a ON ma.id_artista = a.id_artista
JOIN Disco d2 ON a.id_artista = d2.id_artista
GROUP BY d1.id_disco, d1.titulo
HAVING COUNT(d2.id_disco) >= 2;

-- Liste todos os usuários e suas playlists, mas apenas para playlists que contêm pelo menos 5 músicas?
SELECT u.nome AS Usuario, pl.titulo AS Playlist
FROM Usuario u
JOIN Playlist pl ON u.id_usuario = pl.id_usuario
JOIN Playlist_Musica pm ON pl.id_playlist = pm.id_playlist
GROUP BY u.id_usuario, u.nome, pl.id_playlist, pl.titulo
HAVING COUNT(pm.id_musica) >= 5;
