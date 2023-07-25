CREATE TABLE products(
  _id SERIAL PRIMARY KEY,
  product_name VARCHAR(100),
  category VARCHAR(50),
  price INTEGER,
  weight INTEGER
);

-- Insert into products
INSERT INTO
  products(product_name, category, price, weight)
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
  ('Cream Straw Hat', 'accessories', 22, 120),
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
  
  -- Answer of questions: ends --