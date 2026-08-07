/*
  write a SQL query to answer a question of your choice about the prints. The query should:
    Make use of AS to rename a column
    Involve at least one condition, using WHERE
    Sort by at least one column, using ORDER BY
*/

SELECT "english_title" AS "Print Name"
FROM "views"
WHERE "artist" = 'Hokusai'
    AND "english_title" LIKE '%Province%'
ORDER BY "contrast" DESC;