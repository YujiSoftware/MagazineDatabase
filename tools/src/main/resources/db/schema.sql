CREATE TABLE artists (
  artist_id serial PRIMARY KEY,
  name text NOT NULL
);

CREATE TABLE mangas (
  manga_id serial PRIMARY KEY,
  title text NOT NULL,
  main_artist_id integer NOT NULL
);

CREATE TABLE magazines (
  magazine_id serial PRIMARY KEY,
  year integer NOT NULL,
  number integer[] NOT NULL
);

CREATE TABLE serials (
  magazine_id integer NOT NULL,
  manga_id integer NOT NULL,
  "order" integer NOT NULL,
  CONSTRAINT serials_pkey PRIMARY KEY (magazine_id, manga_id, "order")
);
