-- Answer to the questions: starts --
--  Answer to the question no 01
-- Solution: 01 (Without materialize view)
SELECT 
	date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
	COUNT(posts.id) AS likes_for_posts,
	COUNT(comments.id) AS likes_for_comments
FROM likes 
LEFT JOIN posts ON posts.id = likes.post_id
LEFT JOIN comments ON comments.id = likes.comment_id
GROUP BY week
ORDER BY week;

-- Solution: 02 (Using materialize view)
CREATE MATERIALIZED VIEW weekly_likes AS (
	SELECT 
		date_trunc('week', COALESCE(posts.created_at, comments.created_at)) AS week,
		COUNT(posts.id) AS likes_for_posts,
		COUNT(comments.id) AS likes_for_comments
	FROM likes 
	LEFT JOIN posts ON posts.id = likes.post_id
	LEFT JOIN comments ON comments.id = likes.comment_id
	GROUP BY week
	ORDER BY week
) WITH DATA;

SELECT * FROM weekly_likes;

REFRESH MATERIALIZED VIEW weekly_likes;


-- Answer to the questions: ends --