CREATE TABLE ship_staffs(
  _id SERIAL PRIMARY KEY,
  staff_name VARCHAR(50),
  ship_id INTEGER REFERENCES ships(_id)
);

INSERT INTO
  ship_staffs(staff_name, ship_id)
VALUES
  ('Alex', 5),
  ('Jason', 1),
  ('Morgan', 5),
  ('Buttler', 3),
  ('Williamson', 2),
  ('Anderson', 1),
  ('Pooran', 4),
  ('Gayle', 1),
  ('Pollard', NULL)

-- Answer to questions: starts --


-- Answer to questions: ends --