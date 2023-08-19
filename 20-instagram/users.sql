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


-- Answer of questions: endss --