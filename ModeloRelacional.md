# 📊 Modelo Relacional 3FN

## 1. Tabela USUARIO
Essa tabela armazena as informações dos usuários que criam playlists.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_usuario      | int    | PK                  |
| nome            | string | NOT NULL            |
| email           | string | NOT NULL, UNIQUE    |
| data_registro   | date   | NOT NULL            |

---

## 2. Tabela PLAYLIST
Cada playlist é criada por um usuário.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_playlist     | int    | PK                  |
| titulo          | string | NOT NULL            |
| id_usuario      | int    | FK (USUARIO)        |

---

## 3. Tabela MUSICA
Armazena as informações das músicas, associadas a um disco.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_musica       | int    | PK                  |
| titulo          | string | NOT NULL            |
| duracao         | int    | NOT NULL            |
| id_disco        | int    | FK (DISCO)          |

---

## 4. Tabela ARTISTA
Armazena os dados dos artistas que interpretam as músicas.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_artista      | int    | PK                  |
| nome            | string | NOT NULL            |
| data_nascimento | date   |                     |

---

## 5. Tabela DISCO
Contém informações sobre os discos que contêm músicas e são produzidos por artistas.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_disco        | int    | PK                  |
| titulo          | string | NOT NULL            |
| data_lancamento | date   | NOT NULL            |
| id_artista      | int    | FK (ARTISTA)        |

---

## 6. Tabela ARTISTA_MUSICA
Tabela de relacionamento *muitos-para-muitos* entre *ARTISTA* e *MUSICA*, representando quais artistas interpretam quais músicas.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_musica       | int    | PK, FK (MUSICA)     |
| id_artista      | int    | PK, FK (ARTISTA)    |

---

## 7. Tabela PLAYLIST_MUSICA
Tabela de relacionamento *muitos-para-muitos* entre *PLAYLIST* e *MUSICA*, representando as músicas contidas em uma playlist.

| Coluna           | Tipo   | Restrições          |
|------------------|--------|---------------------|
| id_playlist     | int    | PK, FK (PLAYLIST)   |
| id_musica       | int    | PK, FK (MUSICA)     |
