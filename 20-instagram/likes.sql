CREATE TABLE likes (
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE, 
	post_id INTEGER REFERENCES posts(_id) ON DELETE CASCADE,
	comment_id INTEGER REFERENCES comments(_id) ON DELETE CASCADE,
	CHECK(
		COALESCE((post_id)::BOOLEAN::INTEGER, 0)
		+
		COALESCE((comment_id)::BOOLEAN::INTEGER, 0)
		= 1
	),
	UNIQUE(user_id, post_id, comment_id)
);

-- Insert into likes --



-- Answer of questions: starts --



-- Answer of questions: endss --