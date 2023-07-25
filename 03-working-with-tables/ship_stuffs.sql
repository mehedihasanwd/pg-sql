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

-- Queries to ship_staffs
SELECT * 
FROM crew_members WHERE boat_id = 1;

SELECT
  staff_name,
  ship_id,
  ship_name
FROM
  ship_staffs
  JOIN ships ON ships._id = ship_staffs.ship_id
WHERE
  ship_id = 1;

SELECT
  staff_name,
  ship_id,
  ship_name
FROM
  ship_staffs
  JOIN ships ON ships._id = ship_staffs.ship_id
WHERE
  ships._id = 1;

SELECT
  staff_name,
  ship_id,
  ship_name
FROM
  ship_staffs
  LEFT JOIN ships ON ships._id = ship_staffs.ship_id;

SELECT
  staff_name,
  ship_id,
  ship_name
FROM
  ship_staffs
  FULL JOIN ships ON ships._id = ship_staffs.ship_id;

UPDATE
  ship_staffs
SET
  ship_id = 3
WHERE
  staff_name = 'Pollard';

UPDATE
  ship_staffs
SET
  ship_id = 4
WHERE
  _id = 9;