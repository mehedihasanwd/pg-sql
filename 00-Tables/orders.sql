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
  (1, 5, true),
  (5, 1, false),
  (2, 4, false),
  (4, 2, true),
  (3, 3, true),
  (1, 9, true),
  (1, 4, false),
  (1, 3, true),
  (2, 8, false),
  (3, 9, true),
  (4, 1, true),
  (1, 16, false),
  (3, 16, true),
  (2, 17, true),
  (5, 14, true),
  (5, 12, false),
  (3, 12, true);

-- Answer of questions: starts --

-- Answer of questions: ends --