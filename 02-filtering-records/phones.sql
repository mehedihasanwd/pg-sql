CREATE TABLE phones(
  _id SERIAL PRIMARY KEY,
  title VARCHAR(50),
  company VARCHAR(50),
  price INTEGER,
  sales INTEGER
);

-- INSERT TO phones
INSERT INTO 
  phones(title, company, price, sales)
VALUES
  ('MI A2', 'XIOMI', 180, 1200),
  ('Galaxy S3', 'Samsung', 250, 800),
  ('iPhone 15', 'Apple', 500, 2000),
  ('One Plus Nord', 'One Plus', 400, 1500);

-- Queries To Phones
SELECT title, price FROM phones
WHERE sales > 800 AND sales < 2000;

SELECT title, price FROM phones
WHERE price BETWEEN 180 AND 250;

SELECT title, company FROM phones
WHERE company IN ('XIOMI', 'One Plus');

SELECT title, company FROM phones
WHERE company NOT IN ('XIOMI', 'One Plus');

SELECT title, company FROM phones
WHERE company = 'XIOMI' OR company = 'One Plus';

SELECT title, company FROM Phones
WHERE comapany = 'Apple' AND company = 'Samsung'; 

SELECT title, price * sales AS revenue FROM phones
WHERE price * sales > 50000;

UPDATE phones SET sales = 5000 WHERE title = 'Galaxy S3';
UPDATE phones SET price = 800 WHERE title = 'MI A2';

DELETE FROM phones
WHERE company = 'XIOMI';
