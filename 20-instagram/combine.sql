-- Answer to the questions: starts --
SELECT users.username, tags.created_at
FROM users
JOIN (
	SELECT user_id, created_at FROM caption_tags
	UNION ALL
	SELECT user_id, created_at FROM photo_tags
) AS tags ON tags.user_id = users.id
WHERE tags.created_at < '2010-01-07';

WITH tags AS (
	SELECT user_id, created_at FROM caption_tags
	UNION ALL
	SELECT user_id, created_at FROM photo_tags
)
SELECT username, tags.created_at
FROM users
JOIN  tags ON tags.user_id = users.id
WHERE tags.created_at < '2010-01-07';

WITH RECURSIVE countdown(val) AS (
	SELECT 3 AS val
	UNION
	SELECT val - 1 FROM countdown WHERE val > 1
)
SELECT *
FROM countdown;

-- Answer to the questions: ends --