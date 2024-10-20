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

