CREATE TABLE products (
  _id SERIAL PRIMARY KEY,
  product_name VARCHAR(300),
  category VARCHAR(50),
  price INTEGER,
  weight INTEGER
);

-- Insert into products
INSERT INTO
  products(product_name, category, price, weight)
VALUES
  ('White Slim Fit Single Cuff Easy Care Shirt', 'men', 18, 50),
  ('Light Blue Linen Blend Short Sleeve Shirt', 'men', 28, 45),
  ('Black Regular Fit Single Cuff Easy Care Shirt', 'men', 20, 40),
  ('Navy Blue Hawaiian Printed Short Sleeve Shirt', 'men', 30, 60),
  ('Orange Cotton Short Puff Sleeve Tiered Mini Dress', 'women', 22, 160),
  ('Lipsy Pink Ditsy Jersey Underbust Puff Sleeve Summer Mini Dress', 'women', 38, 150),
  ('Navy Blue Relaxed Capped Sleeve Tunic Dress', 'women', 15, 90),
  ('Black Ditsy Floral Tiered Midi Dress', 'women', 49, 100),
  ('Lipsy Navy Print Printed Keyhole Ruffle Fit And Flare Midi Dress', 'women', 70, 110),
  ('Ghd Air Kit - Hair Dryer With Diffuser', 'electronics', 135, 300),
  ('Oral-B Vitality Plus White & Clean Rechargeable Electric Toothbrush', 'electronics', 24, 30),
  ('Ellia White Gather Ceramic And Wood Diffuser', 'electronics', 110, 100),
  ('Nike Black Heritage 86 Cap', 'sports', 13, 40),
  ('Adidas Originals Colour Sports Backpack', 'sports', 28, 100),
  ('Camelbak Forge Flow SST Vacuum Insulated Black Sports Mug 500ml', 'sports', 30, 105),
  ('Black Slim Fit Joggers 2 Pack (3-16yrs)', 'sports', 26, 100),
  ('Converse Black/White Chuck Taylor High Top Junior Trainers', 'sports', 40, 100);


-- Answer of questions: starts --
(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
UNION
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);

(
  SELECT *
  FROM products
  ORDER BY price DESC
  LIMIT 4
)
INTERSECT
(
  SELECT *
  FROM products
  ORDER BY price / weight DESC
  LIMIT 4
);


(
  SELECT category FROM
  products WHERE price < 100
)
  UNION
(
  SELECT category
  FROM products 
  GROUP BY category 
  HAVING COUNT(*) > 2
)


-- Answer of questions: ends --