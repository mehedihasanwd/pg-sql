CREATE TABLE users(
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	username VARCHAR(30) NOT NULL,
	bio VARCHAR(400),
	avatar VARCHAR(200),
	phone VARCHAR(25),
	email VARCHAR(40),
	password VARCHAR(50),
	status VARCHAR(50),
	CHECK(COALESCE(phone, email) IS NOT NULL)
-- 	CHECK(COALESCE(email, password) IS NOT NULL)
);

-- Insert into users --



-- Answer of questions: starts --
SELECT id FROM users
ORDER BY id DESC 
LIMIT 3;

CREATE INDEX ON users(username);

DROP INDEX users_username_idx;

EXPLAIN ANALYZE SELECT * FROM users
WHERE username = 'Payton88';

-- With index: 0.052ms avg
EXPLAIN ANALYZE SELECT * FROM users
WHERE username = 'Payton88';

-- Without index: 0.500ms avg
EXPLAIN ANALYZE SELECT * FROM users
WHERE username = 'Payton88';

SELECT username, contents
FROM users 
JOIN comments on comments.user_id = users.id
WHERE username = 'Payton88';

EXPLAIN SELECT username, contents
FROM users 
JOIN comments on comments.user_id = users.id
WHERE username = 'Payton88';

EXPLAIN ANALYZE SELECT username, contents
FROM users 
JOIN comments on comments.user_id = users.id
WHERE username = 'Payton88';


-- Answer of questions: ends --

-- EXPLAIN -> Build a query plan and display info about it
-- EXPLAIN ANALYZE -> Build a query plan, run it, and info about it.
