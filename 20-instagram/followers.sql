CREATE TABLE followers (
	_id SERIAL PRIMARY KEY,
	created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
	leader_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE,
	follower_id INTEGER NOT NULL REFERENCES users(_id) ON DELETE CASCADE,
	UNIQUE(leader_id, follower_id)
);

-- Insert into followers --



-- Answer of questions: starts --



-- Answer of questions: endss --