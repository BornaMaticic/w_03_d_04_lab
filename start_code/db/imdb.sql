DROP TABLE castings;
DROP TABLE stars;
DROP TABLE movies;

CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255)
);

CREATE TABLE stars (
  id SERIAL4 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

CREATE TABLE castings (
  id SERIAL4 PRIMARY KEY,
  star_id INT4 REFERENCES stars(id) ,
  movie_id INT4 REFERENCES movies(id),
  fee INT4
);

INSERT INTO stars (first_name, last_name) VALUES ('Brad', 'Pitt');
INSERT INTO stars (first_name, last_name) VALUES ('Liam', 'Neeson');
INSERT INTO stars (first_name, last_name) VALUES ('Mia', 'Farrow');


INSERT INTO movies (title, genre) VALUES ('Troy', 'history');
INSERT INTO movies (title, genre) VALUES ('Taken','action');
INSERT INTO movies (title, genre) VALUES ('Rosemary_baby', 'horror');


INSERT INTO castings (movie_id, star_id, fee) VALUES ( 1, 1, 2000000);
INSERT INTO castings (movie_id, star_id, fee) VALUES ( 2, 2, 1000000);
INSERT INTO castings (movie_id, star_id, fee) VALUES ( 3, 3, 3000000);
