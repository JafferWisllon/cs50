-- *** The Devious Delivery ***
--search package with from_address_id null
SELECT * FROM "packages" WHERE "from_address_id" IS NULL;
/*
  id    contents       from_address_id  to_address_id
----  -------------  ---------------  -------------
5098  Duck debugger                   50      
*/

-- search scans
SELECT * FROM "scans" WHERE "package_id" = 5098
/*
id     driver_id  package_id  address_id  action  timestamp                 
-----  ---------  ----------  ----------  ------  --------------------------
30123  10         5098        50          Pick    2023-10-24 08:40:16.246648
30140  10         5098        348         Drop    2023-10-24 10:08:55.610754
*/

-- destination in the `packages` table differs from the destination (drop) in the `scans` table.

-- search with from_address_id null and action Drop

SELECT 
    "a"."type", 
    "p"."contents" 
FROM "packages" AS "p" 
JOIN "scans" AS "s"
    ON "s"."package_id" = "p"."id"
JOIN "addresses" AS "a"
    ON "a"."id" = "s"."address_id"
WHERE "p"."from_address_id" IS NULL 
    AND "s"."action" = 'Drop';