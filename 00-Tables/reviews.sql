CREATE TABLE reviews(
  _id SERIAL PRIMARY KEY,
  rating INTEGER,
  reviewer_id INTEGER REFERENCES writers(_id),
  book_id INTEGER REFERENCES books(_id)
);

-- Insert into reviews

-- Queries in reviews: starts --


-- Queries in reviews: ends --