CREATE TABLE photos (
  _id SERIAL PRIMARY KEY,
  photo_url VARCHAR(200),
  user_id INTEGER REFERENCES users(_id) ON DELETE CASCADE
);

-- Insert into photos
INSERT INTO
  photos(photo_url, user_id)
VALUES
  ('https://img-1.jpg', 1),
  ('https://img-2.jpg', 2),
  ('https://img-3.jpg', 1),
  ('https://img-4.jpg', 3),
  ('https://img-5.jpg', 1),
  ('https://img-6.jpg', 4),
  ('https://img-7.jpg', 3),
  ('https://img-8.jpg', 4),
  ('https://img-9.jpg', 2),
  ('https://img-10.jpg', 5),
  ('https://img-11.jpg', 1),
  ('https://img-12.jpg', 5),
  ('https://img-13.jpg', NULL);

-- Queries in photos: starts --
SELECT photo_url, username
FROM photos
JOIN users ON users._id = photos.user_id;

UPDATE photos SET user_id = 5
WHERE photos._id = 13;

SELECT photo_url, username
FROM photos
LEFT JOIN users ON users._id = photos.user_id;

SELECT
 photos._id AS photo_id, photo_url,
 user_id, email, username
FROM
  photos
  LEFT JOIN users ON users._id = photos.user_id
  WHERE photos._id != 1;

-- Queries in photos: ends --
