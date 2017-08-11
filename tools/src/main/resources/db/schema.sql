CREATE TABLE artist (
  artist_id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE manga (
  manga_id serial PRIMARY KEY,
  title text NOT NULL,
  main_artist_id integer NOT NULL
);

CREATE TABLE magazine (
  magazine_id serial PRIMARY KEY,
  year integer NOT NULL,
  number integer[] NOT NULL
);
