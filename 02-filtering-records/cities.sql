CREATE TABLE cities(
  _id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  total_population INTEGER,
  area INTEGER
);

CREATE TABLE phones(
  _id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  company VARCHAR(50),
  price INTEGER,
  sales INTEGER
);

-- INSERT To cities
INSERT INTO 
  cities(title, total_population, area)
VALUES
  ('Dhaka', 1000, 500),
  ('Sylhet', 800, 450),
  ('Comilla', 950, 400);

-- Queries To Cities
SELECT title, area FROM cities WHERE area > 400;
SELECT title, area FROM cities WHERE area = 400;
SELECT title, area FROM cities WHERE area != 400;
SELECT title, area FROM cities WHERE area <> 400;

SELECT title, area FROM cities 
WHERE title IN ('Dhaka', 'Sylhet');

SELECT title, area FROM cities 
WHERE area NOT IN (400, 500) 
AND title = 'Sylhet';

SELECT title, area FROM cities 
WHERE area NOT IN (400, 500) 
OR title = 'Comilla' OR title = 'Sylhet';

SELECT title, total_population FROM cities 
WHERE area BETWEEN
800 AND 980;

SELECT title, total_population / area as population_density
FROM cities;

SELECT title, total_population / area as population_density
FROM cities WHERE total_population / area > 1;

UPDATE cities SET total_population = 40000000 
WHERE title = 'Dhaka';