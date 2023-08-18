CREATE TABLE comments (
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	contents VARCHAR(240) NOT NULL,
	user_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(_id) ON DELETE CASCADE	
);

-- Insert into comments --



-- Answer of questions: starts --



-- Answer of questions: endss --