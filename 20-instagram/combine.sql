-- Answer to the questions: starts --

-- Answer to the question no -> 01
SELECT users.username, tags.created_at
FROM users
JOIN (
	SELECT user_id, created_at FROM caption_tags
	UNION ALL
	SELECT user_id, created_at FROM photo_tags
) AS tags ON tags.user_id = users.id
WHERE tags.created_at < '2010-01-07';

-- Answer to the question no -> 02
WITH tags AS (
	SELECT user_id, created_at FROM caption_tags
	UNION ALL
	SELECT user_id, created_at FROM photo_tags
)
SELECT username, tags.created_at
FROM users
JOIN  tags ON tags.user_id = users.id
WHERE tags.created_at < '2010-01-07';

-- Answer to the question no -> 03
WITH RECURSIVE countdown(val) AS (
	SELECT 3 AS val
	UNION
	SELECT val - 1 FROM countdown WHERE val > 1
)
SELECT *
FROM countdown;

-- Answer to the question no -> 04
WITH RECURSIVE suggestions(leader_id, follower_id, depth) AS (
		SELECT leader_id, follower_id, 1 AS depth
		FROM followers
		WHERE follower_id = 1000
	UNION
		SELECT followers.leader_id, followers.follower_id, depth + 1
		FROM followers 
		JOIN suggestions ON suggestions.leader_id = followers.follower_id
		WHERE depth < 3
)
SELECT DISTINCT users.id, users.username
FROM suggestions
JOIN users ON users.id = suggestions.leader_id
WHERE depth > 1
LIMIT 30;

-- Answer to the question no -> 05
SELECT username, COUNT(*) AS tagged_in
FROM users 
JOIN (
	SELECT user_id FROM photo_tags
 UNION ALL
	SELECT user_id FROM caption_tags
) AS tags ON tags.user_id = users.id
GROUP BY users.username
ORDER BY COUNT(*) DESC LIMIT 1

-- Answer to the question no -> 06
CREATE VIEW tags AS (
	SELECT id, created_at, user_id, post_id, 'photo_tag' AS type FROM photo_tags
 UNION ALL
	SELECT id, created_at, user_id, post_id, 'caption_tag' AS type FROM caption_tags
)

-- Answer to the question no -> 07
SELECT username, COUNT(*) AS tagged_in
FROM users 
JOIN tags ON tags.user_id = users.id
GROUP BY users.username
ORDER BY COUNT(*) DESC LIMIT 1

-- Answer to the question no -> 08
CREATE VIEW recent_posts AS (
	SELECT * 
	FROM posts
	ORDER BY created_at DESC
	LIMIT 10
);

SELECT * FROM recent_posts;


-- Answer to the questions: ends --