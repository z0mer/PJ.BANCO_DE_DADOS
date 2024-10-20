-- Inserir em Artistas
INSERT INTO Artista (id_artista, nome, data_nascimento) VALUES
(1, 'The Beatles', '1940-10-09'),
(2, 'Queen', '1970-01-28'),
(3, 'Pink Floyd', '1965-03-01'),
(4, 'Led Zeppelin', '1968-04-08'),
(5, 'AC/DC', '1973-05-31'),
(6, 'Eminem', '1972-10-17'),
(7, 'Taylor Swift', '1989-12-13'),
(8, 'Adele', '1988-05-05'),
(9, 'Bruno Mars', '1985-10-08'),
(10, 'Beyoncé', '1981-09-04');

-- Inserir em Discos
INSERT INTO Disco (id_disco, titulo, data_lancamento, id_artista) VALUES
(1, 'Abbey Road', '1969-09-26', 1),
(2, 'A Night at the Opera', '1975-11-21', 2),
(3, 'The Dark Side of the Moon', '1973-03-01', 3),
(4, 'Led Zeppelin IV', '1971-11-08', 4),
(5, 'Back in Black', '1980-07-25', 5),
(6, 'The Marshall Mathers LP', '2000-05-23', 6),
(7, '1989', '2014-10-27', 7),
(8, '25', '2015-11-20', 8),
(9, 'Unorthodox Jukebox', '2012-12-04', 9),
(10, 'Lemonade', '2016-04-23', 10),
(11, 'Revolver', '1966-08-05', 1),
(12, 'News of the World', '1977-10-28', 2),
(13, 'Wish You Were Here', '1975-09-12', 3),
(14, 'Physical Graffiti', '1975-02-24', 4),
(15, 'Highway to Hell', '1979-07-27', 5);

-- Inserir em Músicas
INSERT INTO Musica (id_musica, titulo, duracao, id_disco) VALUES
(1, 'Come Together', 259, 1),
(2, 'Something', 182, 1),
(3, 'Bohemian Rhapsody', 354, 2),
(4, 'Love of My Life', 217, 2),
(5, 'Money', 382, 3),
(6, 'Time', 413, 3),
(7, 'Stairway to Heaven', 482, 4),
(8, 'Black Dog', 296, 4),
(9, 'Hells Bells', 312, 5),
(10, 'Shoot to Thrill', 315, 5),
(11, 'Stan', 404, 6),
(12, 'Lose Yourself', 326, 6),
(13, 'Blank Space', 231, 7),
(14, 'Shake It Off', 242, 7),
(15, 'Hello', 295, 8),
(16, 'Send My Love', 223, 8),
(17, 'Locked Out of Heaven', 193, 9),
(18, 'Just the Way You Are', 219, 9),
(19, 'Formation', 214, 10),
(20, 'Sorry', 219, 10),
(21, 'Eleanor Rigby', 138, 11),
(22, 'Yellow Submarine', 163, 11),
(23, 'We Will Rock You', 122, 12),
(24, 'We Are the Champions', 179, 12),
(25, 'Shine On You Crazy Diamond', 810, 13),
(26, 'Wish You Were Here', 334, 13),
(27, 'Kashmir', 515, 14),
(28, 'Trampled Under Foot', 361, 14),
(29, 'Highway to Hell', 208, 15),
(30, 'Girls Got Rhythm', 150, 15);

-- Inserir em Usuários
INSERT INTO Usuario (id_usuario, nome, email, data_registro) VALUES
(1, 'Humberto Pellegrini', 'humberto.pellegrini@gmail.com', '2023-01-10'),
(2, 'Anna Carolina Zomer', 'anna.zomer@gmail.com', '2023-02-15'),
(3, 'Carlos Pellegrini', 'carlos.pellegrini@gmail.com', '2023-03-20'),
(4, 'Larissa Zomer', 'larissa.zomer@gmail.com', '2023-04-25'),
(5, 'Felipe Hideki', 'felipe.hideki@gmail.com', '2023-05-30');

-- Inserir em Playlists
INSERT INTO Playlist (id_playlist, titulo, id_usuario) VALUES
(1, 'Clássicos do Rock', 1),
(2, 'Hits de 2020', 1),
(3, 'Top Queen', 2),
(4, 'Relaxamento', 3),
(5, 'Workout', 4),
(6, 'Chill Vibes', 5),
(7, 'Best of The Beatles', 2),
(8, 'Rap Intenso', 4),
(9, 'Pop Hits', 5),
(10, 'Metallica Favorites', 3);

-- Inserir em Relações Musica_Artista
INSERT INTO Musica_Artista (id_musica, id_artista) VALUES
(1, 1),  -- Come Together - The Beatles
(2, 1),  -- Something - The Beatles
(3, 2),  -- Bohemian Rhapsody - Queen
(4, 2),  -- Love of My Life - Queen
(5, 3),  -- Money - Pink Floyd
(6, 3),  -- Time - Pink Floyd
(7, 4),  -- Stairway to Heaven - Led Zeppelin
(8, 4),  -- Black Dog - Led Zeppelin
(9, 5),  -- Hells Bells - AC/DC
(10, 5), -- Shoot to Thrill - AC/DC
(11, 6), -- Stan - Eminem
(12, 6), -- Lose Yourself - Eminem
(13, 7), -- Blank Space - Taylor Swift
(14, 7), -- Shake It Off - Taylor Swift
(15, 8), -- Hello - Adele
(16, 8), -- Send My Love - Adele
(17, 9), -- Locked Out of Heaven - Bruno Mars
(18, 9), -- Just the Way You Are - Bruno Mars
(19, 10), -- Formation - Beyoncé
(20, 10), -- Sorry - Beyoncé
(21, 1), -- Eleanor Rigby - The Beatles
(22, 1), -- Yellow Submarine - The Beatles
(23, 2), -- We Will Rock You - Queen
(24, 2), -- We Are the Champions - Queen
(25, 3), -- Shine On You Crazy Diamond - Pink Floyd
(26, 3), -- Wish You Were Here - Pink Floyd
(27, 4), -- Kashmir - Led Zeppelin
(28, 4), -- Trampled Under Foot - Led Zeppelin
(29, 5), -- Highway to Hell - AC/DC
(30, 5); -- Girls Got Rhythm - AC/DC

-- Inserir em Relações Playlist_Musica
INSERT INTO Playlist_Musica (id_playlist, id_musica) VALUES
-- Playlist 1: Clássicos do Rock
(1, 1),  -- Come Together
(1, 2),  -- Something
(1, 7),  -- Stairway to Heaven
(1, 8),  -- Black Dog
(1, 9),  -- Hells Bells
(1, 10), -- Shoot to Thrill
(1, 21), -- Eleanor Rigby
(1, 22), -- Yellow Submarine
(1, 23), -- We Will Rock You
(1, 24), -- We Are the Champions
(1, 27), -- Kashmir
(1, 28), -- Trampled Under Foot
(1, 29), -- Highway to Hell
(1, 30), -- Girls Got Rhythm,

-- Playlist 2: Hits de 2020
(2, 13), -- Blank Space
(2, 14), -- Shake It Off
(2, 15), -- Hello
(2, 16), -- Send My Love
(2, 17), -- Locked Out of Heaven
(2, 18), -- Just the Way You Are
(2, 19), -- Formation
(2, 20); -- Sorry

-- Playlist 3: Top Queen
(3, 3),  -- Bohemian Rhapsody
(3, 4),  -- Love of My Life
(3, 23), -- We Will Rock You
(3, 24); -- We Are the Champions

-- Playlist 4: Relaxamento
(4, 5),  -- Money
(4, 6),  -- Time
(4, 25), -- Shine On You Crazy Diamond
(4, 26); -- Wish You Were Here

-- Playlist 5: Workout
(5, 7),  -- Stairway to Heaven
(5, 9),  -- Hells Bells
(5, 10), -- Shoot to Thrill
(5, 11), -- Stan
(5, 12); -- Lose Yourself

-- Playlist 6: Chill Vibes
(6, 15), -- Hello
(6, 16), -- Send My Love
(6, 17), -- Locked Out of Heaven
(6, 18), -- Just the Way You Are
(6, 19), -- Formation
(6, 20); -- Sorry

-- Playlist 7: Best of The Beatles
(7, 1),  -- Come Together
(7, 2),  -- Something
(7, 21), -- Eleanor Rigby
(7, 22); -- Yellow Submarine

-- Playlist 8: Rap Intenso
(8, 11), -- Stan
(8, 12); -- Lose Yourself

-- Playlist 9: Pop Hits
(9, 13), -- Blank Space
(9, 14), -- Shake It Off
(9, 17), -- Locked Out of Heaven
(9, 18), -- Just the Way You Are,
(9, 19), -- Formation
(9, 20); -- Sorry

-- Playlist 10: Metallica Favorites
(10, 9),  -- Hells Bells
(10, 10), -- Shoot to Thrill
(10, 29); -- Highway to Hell
