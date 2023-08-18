CREATE TABLE posts(
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	url VARCHAR(200) NOT NULL,
	caption VARCHAR(240),
	lat REAL CHECK(lat IS NULL OR (lat >= -90 AND lat <= 90)),
	lng REAL CHECK(lat IS NULL OR (lng >= -180 AND lat <= 180)),
	user_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE
);

-- Insert into photos --



-- Answer of questions: starts --
SELECT posts.user_id, caption FROM posts 
JOIN users ON users.id = posts.user_id
WHERE users.id = 50;



-- Answer of questions: endss --