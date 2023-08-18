CREATE TABLE caption_tags(
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	user_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(_id) ON DELETE CASCADE,
	UNIQUE(user_id, post_id)
);

-- Insert into caption_tags --



-- Answer of questions: starts --



-- Answer of questions: endss --