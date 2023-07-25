CREATE TABLE statements(
  _id SERIAL PRIMARY KEY,
  contents VARCHAR(250),
  photo_url INTEGER REFERENCES photos(_id),
  user_id INTEGER REFERENCES users(_id)
);

