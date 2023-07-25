CREATE TABLE phones(
  _id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  company VARCHAR(50),
  price INTEGER,
  sales INTEGER
);

-- INSERT To phones
INSERT INTO 
  phones(title, company, price, sales)
VALUES
  ('MI A2', 'XIOMI', 180, 1200),
  ('Galaxy S3', 'Samsung', 250, 800),
  ('iPhone 15', 'Apple', 500, 2000),
  ('One Plus Nord', 'One Plus', 400, 1500);

-- Answer to questions: starts --


-- Answer to questions: ends --