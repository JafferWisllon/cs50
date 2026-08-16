-- write SQL query to answer a question of your choice. This query should:
 -- Make use of AS to rename a column
 -- Involve at least condition, using WHERE
 -- Sort by at least one column using ORDER BY

SELECT "first_name" AS "Brazilian Players"
FROM "players"
WHERE "birth_country" = 'Brazil'
ORDER BY "first_name" ASC;
