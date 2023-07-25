CREATE TABLE photos(
  _id SERIAL PRIMARY KEY,
  photo_url VARCHAR(200),
  user_id INTEGER REFERENCES users(_id) ON DELETE CASCADE
);


INSERT INTO
  photos(photo_url, user_id)
VALUES
  ('https://img-1.jpg', 5),
  ('https://img-2.jpg', 1),
  ('https://img-3.jpg', 4),
  ('https://img-4.jpg', 2),
  ('https://img-5.jpg', 3),
  ('https://img-6.jpg', 3),
  ('https://img-7.jpg', 1),
  ('https://img-8.jpg', 5),
  ('https://img-9.jpg', 1),
  ('https://img-10.jpg', 1);

-- Drop a Table
DROP TABLE photos;

-- Queries to photos
SELECT
  photos._id as photo_id,
  photo_url,
  username
FROM
  photos
  JOIN users ON users._id = photos.user_id;


SELECT
  photos._id as photo_id,
  photo_url,
  username
FROM
  photos
  JOIN users ON users._id = photos.user_id
  WHERE users._id = 1;

SELECT
  photos._id as photo_id,
  photo_url,
  username
FROM
  photos
  JOIN users ON users._id = photos.user_id
  WHERE photos.user_id = 1;

SELECT
  photos._id as photo_id,
  photo_url,
  username
FROM
  photos
  JOIN users ON users._id = photos.user_id
WHERE username IN('saiful', 'adnan')
  AND photo_url NOT IN ('https://img-3.jpg', 'https://img-10.jpg');

UPDATE photos SET photos.user_id = 7
WHERE _id = 3;