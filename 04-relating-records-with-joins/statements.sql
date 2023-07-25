CREATE TABLE statements (
  _id SERIAL PRIMARY KEY,
  contents VARCHAR(240),
  user_id INTEGER REFERENCES users(_id) ON DELETE CASCADE,
  photo_id INTEGER REFERENCES photos(_id) ON DELETE CASCADE
);

-- Insert into statements
INSERT INTO
  statements(contents, user_id, photo_id)
VALUES
  ('This image is enough to make anyone smile.', 1, 5),
  ('Such a perfect picture.', 1, 4),
  ('Wow, what a masterpiece!', 1, 3),
  ('Kind of picture I needed to see to start my day.', 5, 10),
  ('What a beauty it is!', 5, 5),
  ('Too perfect shot.', 4, 3),
  ('Stunning beauty of the nature', 2, 6),
  ('Happiness overloaded! Just fabulous! A gorgeous bird.', 2, 8),
  ('Why this is so sweet?', 3, 5),
  ('So much pleasure in one picture.', 2, 12),
  ('Just incredible.', 2,9),
  ('I love this.', 3, 10);

-- Queries in statements: starts --
SELECT contents, username
FROM statements
JOIN users 
ON users._id = statements.user_id
AND user_id != 2;

SELECT contents, photo_url
FROM statements
JOIN photos 
ON photos._id = statements.photo_id;

SELECT
  photo_url,
  contents,
  photos.user_id,
  statements.user_id
FROM
  statements
  JOIN photos ON photos._id = statements.photo_id
WHERE
  photos.user_id = statements.user_id;


SELECT
  photo_url,
  contents,
  username
FROM
  statements
  JOIN photos ON photos._id = statements.photo_id
  JOIN users ON users._id = statements.user_id
  AND users._id = photos.user_id;

-- Queries in statements: ends --