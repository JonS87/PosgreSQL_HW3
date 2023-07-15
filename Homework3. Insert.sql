-- Задание 1

insert into executors (executor_name) values
('Испольнитель'),
('Испольнитель 2'),
('Испольнитель 3'),
('Испольнитель 4');

insert into genres (genre_name) values
('Жанр 1'),
('Жанр 2'),
('Жанр 3');

insert into albums (album_name, year_release) values
('Альбом 1', 2019),
('Альбом 2', 2022),
('Альбом 3', 2023);

insert into albums (album_name, year_release) values
('Альбом 4', 2020);

insert into tracks (track_name, duration, album_id) values
('Мой трек', 100, 1),
('My track', 211, 1),
('Трек 3', 145, 2),
('Трек 4', 108, 2),
('Трек 5', 250, 3),
('myself', 126, 3);

insert into tracks (track_name, duration, album_id) values
('my own', 100, 1),
('own my', 211, 1),
('my', 145, 2),
('oh my god', 108, 2),
('by myself', 250, 3),
('bemy self', 126, 3),
('myself by', 145, 2),
('by myself by', 108, 2),
('beemy', 250, 3),
('premyne', 126, 3);


insert into collections (collection_name, year_release) values
('Коллекция 1', 2020),
('Коллекция 2', 2022),
('Коллекция 3', 2023),
('Коллекция 4', 2023);

insert into trackscollections (track_id, collection_id) values
(1, 1),
(2, 1),
(1, 2),
(3, 2),
(1, 3),
(4, 3),
(5, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(5, 4),
(6, 4);

insert into executorsgenres (genre_id, executor_id) values
(1, 1),
(2, 2),
(3, 3),
(2, 4);

insert into executorsalbums (album_id, executor_id) values
(1, 1),
(2, 2),
(3, 3),
(2, 4);

insert into executorsalbums (album_id, executor_id) values
(7, 3);
