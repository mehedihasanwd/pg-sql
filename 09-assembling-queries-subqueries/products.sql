CREATE TABLE products(
  _id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  category VARCHAR(50),
  price INTEGER,
  weight INTEGER
);

-- Insert into products
INSERT INTO
  products(title, category, price, weight)
VALUES
  ('Navy Blue Stretch Short Sleeve Shirt', 'men', 28, 100),
  ('Khaki Green Regular Cargo Trouser', 'men', 35, 150),
  ('Light Blue Linen Blend Short Sleeve Shirt', 'men', 30, 120),
  ('White Slim Essential Crew Neck T-Shirt', 'men', 15, 100),
  ('Navy Blue Jersey Jumpsuit', 'women', 30, 200),
  ('Orange Cotton Puff Sleeve Mini Dress', 'women', 24, 140),
  ('Black Cotton Sleeveless Crew Neck Maxi Dress', 'women', 26, 150),
  ('Pale Pink Floral Sunsafe Swim Suit', 'baby', 15, 80),
  ('White Embroidered Mesh Party Dress', 'baby', 25, 110),
  ('Purple Glitter Light-Up Trainers', 'baby', 27, 115),
  ('White 5 Pack Puff Sleeve School Shirts', 'baby', 30, 125),
  ('Blue Mermaid Clogs With Ankle Strap', 'baby', 25, 140),
  ('Black Leather Belt', 'accessories', 16, 70),
  ('Gun Metal Pilot Polarised Sunglasses', 'accessories', 19, 76),
  ('Cream Straw Hat', 'accessories', 22, 120);


-- Answer of questions: starts --
SELECT title, price 
FROM products WHERE price > (
	SELECT MAX(price) 
  FROM products 
  WHERE category = 'accessories'
);

SELECT title, price
FROM products WHERE price > (
	SELECT MAX(price) FROM
  products WHERE category = 'accessories'
) ORDER BY price desc OFFSET 2 LIMIT 5;

SELECT p1.title,
(SELECT COUNT(title) FROM products)
FROM (SELECT * FROM products) AS p1
JOIN(SELECT * FROM products) AS p2 ON p1._id = p2._id
WHERE p1._id IN (SELECT _id FROM products);

SELECT title, price, price / (SELECT MAX(price) FROM products)
AS price_ratio FROM products;

SELECT MAX(items.avg_price) AS max_average_price
FROM (
  SELECT AVG(price) AS avg_price
  FROM products GROUP BY price
) AS items;

SELECT username FROM users
JOIN(
  SELECT user_id FROM 
  orders WHERE product_id = 3
) as o ON o.user_id = users._id;

SELECT title, price 
FROM products WHERE price > (
	SELECT AVG(price) AS avg_price
	FROM products
);

SELECT title, price 
FROM products WHERE price > (
	SELECT AVG(price) AS avg_price
	FROM products
) ORDER BY price;

SELECT title, category
FROM products
WHERE category NOT IN 
(SELECT category 
 FROM products WHERE price < 20);

SELECT title, category, price
FROM products
WHERE price >
(SELECT MAX(price)
 FROM products WHERE category = 'accessories'
) ORDER BY price;

SELECT title, category, price
FROM products
WHERE price > ALL 
(SELECT price
 FROM products WHERE category = 'accessories'
) ORDER BY price;

SELECT title, category, price
FROM products
WHERE price > SOME (
	SELECT price
  FROM products WHERE category = 'accessories'
) ORDER BY price;

SELECT title, category, price
FROM products
WHERE price > ALL 
(SELECT price
 FROM products WHERE category = 'women'
) ORDER BY price;

SELECT title, category, price
FROM products AS p1 WHERE p1.price = (
  SELECT MAX(price)
  FROM products AS p2
  WHERE p1.category = p2.category
);

SELECT
  (SELECT MAX(price) FROM products) AS max_price,
  (SELECT MIN(price) FROM products) AS min_price,
  (SELECT AVG(price) FROM products) AS avg_price;

-- Answer of questions: ends --