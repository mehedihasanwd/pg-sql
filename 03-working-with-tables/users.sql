CREATE TABLE users(
  _id SERIAL PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(50)
);

INSERT INTO 
  users(username, email)
VALUES
  ('adnan', 'adnan@gmail.com'),
  ('mahin', 'mahin@gmail.com'),
  ('farhan', 'farhan@gmail.com'),
  ('mehedi', 'mehedi@gmail.com'),
  ('saiful', 'saiful@gmail.com');

-- Queries to users
SELECT * FROM users;
SELECT username, email FROM users;

SELECT username, email FROM users
WHERE username in ('adnan', 'farhan') 
OR email = 'saiful@gmail.com';

SELECT username, email FROM users
WHERE username NOT IN ('adnan', 'farhan') 
AND email = 'saiful@gmail.com';

DELETE FROM users
WHERE _id = 4;


