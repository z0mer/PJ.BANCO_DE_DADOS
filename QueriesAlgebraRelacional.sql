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
