CREATE TABLE books(
  _id SERIAL PRIMARY KEY,
  book_name VARCHAR(80),
  writer_id INTEGER REFERENCES writers(_id)
);

-- Insert into books
INSERT INTO
  books(book_name, writer_id)
VALUES
  ('Al-Fiqh Al-Akbar', 1),
  ('Al-Fiqh Al-Absat', 1),
  ('Kitaab-ul-Aathaar', 1),
  ('Al-Wasiyyah', 1),
  ('At Tareq Al Aslam Musnad', 1),
  ('Al-Risala', 2),
  ('Kitaab Al-Umm', 2),
  ('Musnad Al-Shafii', 2),
  ('Ikhtilaf Al Hadith', 2),
  ('Al Sunnah Al Mathour', 2),
  ('Jma Al ilm', 2),
  ('Sahih Al-Bukhari', 3),
  ('Al-Adab Al-Mufrad', 3),
  ('Al-Tarikh Al-Kabir', 3),
  ('Sahih Muslim', 4),
  ('Usool AS-Sunnah', 5),
  ('AS-Sunnah', 5),
  ('Kitaab Al-Manasik', 5),
  ('Kitaab Al-Zuhd', 5),
  ('Kitaab Al-Iman', 5),
  ('Kitaab Al-Masail', 5),
  ('Kitaab Al-Ashribah', 5),
  ('Kitaab Al-Fadail Sahaba', 5),
  ('Kitaab Mansukh', 5),
  ('Kitaab Al-Radd', 5),
  ('Kitaab Al-Faraid', 5),
  ('Musnad Ahmad Ibn Hanbal', 5);


-- Queries in books: starts --
SELECT
  book_name,
  writer_name
FROM
  books
  JOIN writers ON writers._id = books.writer_id;

SELECT
  book_name,
  writer_name
FROM
  books
  JOIN writers ON writers._id = books.writer_id
  WHERE books._id = 3;

SELECT
  book_name,
  writer_name
FROM
  writers
  JOIN books ON books.writer_id = writers._id
  WHERE books._id != 4;

SELECT
	books._id AS book_id,
  book_name,
  writer_name
FROM
  writers
  JOIN books ON books.writer_id = writers._id
  WHERE books._id != 4;

-- Queries in books: endss --