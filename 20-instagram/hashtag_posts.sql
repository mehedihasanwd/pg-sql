CREATE TABLE hashtags_posts (
	_id SERIAL PRIMARY KEY,
	hashtag_id INTEGER NOT NULL REFERENCES hashtags(_id) ON DELETE CASCADE,
	post_id INTEGER NOT NULL REFERENCES posts(_id) ON DELETE CASCADE,
	UNIQUE(hashtag_id, post_id)
);

-- Insert into hashtag_posts --



-- Answer of questions: starts --



-- Answer of questions: endss --