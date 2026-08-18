-- write a SQL query to display the names of all school districts and the number of pupils enrolled in each.

SELECT "districts"."name", "expenditures"."pupils"
FROM "districts"
JOIN "expenditures" ON "expenditures"."district_id" = "districts"."id"
ORDER BY "expenditures"."pupils" DESC;