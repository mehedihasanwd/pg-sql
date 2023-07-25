CREATE TABLE reviews(
  _id SERIAL PRIMARY KEY,
  rating INTEGER,
  reviewer_id INTEGER REFERENCES writers(_id),
  book_id INTEGER REFERENCES books(_id)
);

-- Insert into reviews

-- Queries in reviews: starts --
SELECT book_name, writer_name, rating
FROM reviews JOIN books ON books._id = reviews.book_id
JOIN writers ON writers._id = reviews.reviewer_id AND writers._id = books.writer_id;

-- Queries in reviews: ends --