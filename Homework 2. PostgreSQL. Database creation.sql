create table if not exists Genres (
	Genre_id serial primary key,
	Genre_name varchar(40) not null
);

create table if not exists Executors (
	Executor_id serial primary key,
	Executor_name varchar(40) not null
);

create table if not exists ExecutorsGenres (
	ExecutorsGenres_id serial primary key,
	Genre_id integer not null references Genres(Genre_id),
	Executor_id integer not null references Executors(Executor_id)
);

create table if not exists Albums (
	Album_id serial primary key,
	Album_name varchar(40) not null,
	Year_release integer  not null check (Year_release >= 1900)
);

create table if not exists ExecutorsAlbums (
	ExecutorsAlbums_id serial primary key,
	Album_id integer not null references Albums(Album_id),
	Executor_id integer not null references Executors(Executor_id)
);

create table if not exists Tracks (
	Track_id serial primary key,
	Track_name varchar(40) not null,
	Duration integer not null,
	Album_id integer not null references Albums(Album_id)
);

create table if not exists Collections (
	Collection_id serial primary key,
	Collection_name varchar(40) not null,
	Year_release integer  not null check (Year_release >= 1900)
);

create table if not exists TracksCollections (
	TracksCollections_id serial primary key,
	Track_id integer not null references Tracks(Track_id),
	Collection_id integer not null references Collections(Collection_id)
);

ALTER TABLE tracks ALTER COLUMN duration type int4;