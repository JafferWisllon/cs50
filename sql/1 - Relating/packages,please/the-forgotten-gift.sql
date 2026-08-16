-- *** The Forgotten Gift ***

-- Search for destination address
SELECT * FROM "addresses" WHERE "address" = '728 Maple Place';
-- id    address          type       
-- ----  ---------------  -----------
-- 4983  728 Maple Place  Residential


-- search origin address
SELECT * FROM "addresses" WHERE "address" = '109 Tileston Street';
/*
id    address              type       
----  -------------------  -----------
9873  109 Tileston Street  Residential
*/

-- search package
SELECT * FROM "packages" WHERE "from_address_id" = 9873;
-- id    contents  from_address_id  to_address_id
   ----  --------  ---------------  -------------
-- 9523  Flowers   9873             4983         

-- search all scans for package_id
SELECT * FROM "scans" WHERE "package_id" = 9523;
-- id     driver_id  package_id  address_id  action  timestamp                 
-- -----  ---------  ----------  ----------  ------  --------------------------
-- 10432  11         9523        9873        Pick    2023-08-16 21:41:43.219831
-- 10500  11         9523        7432        Drop    2023-08-17 03:31:36.856889
-- 12432  17         9523        7432        Pick    2023-08-23 19:41:47.913410

-- search address for action drop
SELECT * FROM "addresses" WHERE "id" = 7432
-- id    address                 type     
-- ----  ----------------------  ---------
-- 7432  950 Brannon Harris Way  Warehouse

-- What are the contents?
-- What was the last action?
-- Who has the gift?
-- From where?

SELECT
    "packages"."contents",
    "drivers"."name",
    "scans"."action",
    "addresses"."address"
FROM "scans"
JOIN "packages"
    ON "packages"."id" = "scans"."package_id"
JOIN "drivers"
    ON "drivers"."id" = "scans"."driver_id"
JOIN "addresses" 
    ON "addresses"."id" = "scans"."address_id"
WHERE "scans"."package_id" = 9523
ORDER BY "scans"."timestamp" DESC
LIMIT 1;