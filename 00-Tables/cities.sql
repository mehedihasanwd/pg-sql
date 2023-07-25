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

-- Answer to questions: starts --


-- Answer to questions: ends --