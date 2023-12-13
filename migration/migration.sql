DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
  id serial,
  title text,
  duration integer,
  rating varchar(10),
  genre text,
  is_3d boolean NOT NULL,
  released_at timestamp with time zone,
  score numeric(3, 1)
);

DROP TABLE IF EXISTS awards;

CREATE TABLE awards (
    id serial,
    movie_id serial,
    kind text,
    name text 
);

ALTER TABLE awards ADD COLUMN received_award boolean;

-- SELECT id, title, score FROM movies ORDER BY score LIMIT 1;
-- SELECT id, title, duration FROM movies WHERE title IN ('X-Men: Apocalypse', 'The Princess Bride');
-- SELECT id, title, released_at FROM movies ORDER BY released_at ASC;
-- SELECT id, title, released_at FROM movies ORDER BY released_at DESC;
-- SELECT id, title, genre, rating, score FROM movies WHERE rating = 'PG' AND score >= 7.5 AND score <= 8.5;
-- UPDATE movies SET score = score + 0.5 WHERE genre = 'Crime';
-- UPDATE movies SET score = score - 2 WHERE is_3d = 'true';
-- DELETE FROM movies WHERE title LIKE '%en%';