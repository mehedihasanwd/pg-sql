CREATE TABLE users(
  _id SERIAL PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(50)
);

-- Insert into users
INSERT INTO 
  users(username, email)
VALUES
  ('adnan', 'adnan@gmail.com'),
  ('mahin', 'mahin@gmail.com'),
  ('farhan', 'farhan@gmail.com'),
  ('saiful', 'saiful@gmail.com'),
  ('mehedi', 'mehedi@gmail.com'),
  ('ashraful', 'ashraful@gmail.com');


-- Queries in users: starts --
DELETE FROM
users WHERE _id = 5;


-- Queries in users: ends --
