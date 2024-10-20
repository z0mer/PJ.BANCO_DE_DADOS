-- Criar tabela Artista
CREATE TABLE Artista (
    id_artista INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    data_nascimento DATE
);

-- Criar tabela Disco
CREATE TABLE Disco (
    id_disco INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    data_lancamento DATE,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES Artista(id_artista)
);

-- Criar tabela Musica
CREATE TABLE Musica (
    id_musica INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    duracao INT,
    id_disco INT,
    FOREIGN KEY (id_disco) REFERENCES Disco(id_disco)
);

-- Criar tabela Usuario
CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    data_registro DATE
);

-- Criar tabela Playlist
CREATE TABLE Playlist (
    id_playlist INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

-- Criar tabela Musica_Artista
CREATE TABLE Artista_Musica (
    id_musica INT,
    id_artista INT,
    PRIMARY KEY (id_musica, id_artista),
    FOREIGN KEY (id_musica) REFERENCES Musica(id_musica),
    FOREIGN KEY (id_artista) REFERENCES Artista(id_artista)
);

-- Criar tabela Playlist_Musica
CREATE TABLE Playlist_Musica (
    id_playlist INT,
    id_musica INT,
    PRIMARY KEY (id_playlist, id_musica),
    FOREIGN KEY (id_playlist) REFERENCES Playlist(id_playlist),
    FOREIGN KEY (id_musica) REFERENCES Musica(id_musica)
);
