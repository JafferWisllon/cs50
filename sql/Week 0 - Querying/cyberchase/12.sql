-- count the number of unique episode titles

SELECT COUNT(DISTINCT "title") AS "unique_episodes"
FROM "episodes";