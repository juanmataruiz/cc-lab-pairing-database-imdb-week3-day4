DROP TABLE IF EXISTS castings;
DROP TABLE stars;
DROP TABLE movies;

CREATE TABLE movies (
  id SERIAL8 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  rating INT8
);

CREATE TABLE stars (
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  second_name VARCHAR(255)
);

CREATE TABLE castings (
  id SERIAL8 PRIMARY KEY,
  movie_id INT8 REFERENCES movies(id) ON DELETE CASCADE,
  star_id INT8 REFERENCES stars(id) ON DELETE CASCADE
);
