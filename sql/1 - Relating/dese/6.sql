-- write a SQL query to find the names of schools (public or charter!) that reported a 100% graduation rate.

SELECT "schools"."name" 
FROM "schools"
JOIN "graduation_rates" ON "graduation_rates"."school_id" = "schools"."id"
where "graduation_rates"."graduated" = 100;