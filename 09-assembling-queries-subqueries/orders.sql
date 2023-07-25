CREATE TABLE orders(
  _id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(_id),
  product_id INTEGER REFERENCES products(_id),
  paid BOOLEAN
);

-- Insert into orders
INSERT INTO 
  orders(user_id, product_id, paid)
VALUES
  (1, 5, TRUE),
  (1, 2, FALSE),
  (1, 3, TRUE),
  (2, 8, TRUE),
  (2, 5, TRUE),
  (3, 6, FALSE),
  (3, 7, TRUE),
  (3, 9, TRUE),
  (4, 1, FALSE),
  (5, 10, TRUE);


-- Answer of questions: starts --
SELECT AVG(order_count) AS average_order
FROM(
	SELECT user_id, COUNT(*) AS order_count
  FROM orders JOIN users ON users._id = orders.user_id GROUP BY user_id
) AS subquery;

SELECT _id FROM orders
WHERE product_id IN (SELECT _id FROM products WHERE price / weight <= 1);

SELECT orders._id 
FROM orders
JOIN products ON products._id = orders.product_id
WHERE price / weight <= 1;

SELECT products._id, COUNT(product_id) AS total_orders
FROM orders
JOIN products ON products._id = orders.product_id GROUP BY products._id;

SELECT p1.title, (
  SELECT COUNT(*)
  FROM orders AS o1
  WHERE o1.product_id = p1._id
) FROM products AS p1;

SELECT (
  SELECT MAX(price) FROM products
) / (
  SELECT AVG(price) FROM products
) AS avg_price_ratio;



-- Answer of questions: ends --