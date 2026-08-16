-- *** The Lost Letter ***
-- [LOGS]

-- search from_address_id
SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue'; 
-- 432
-- search to_address_id

SELECT "id" FROM "addresses" WHERE "address" = ' 2 Finnigan Street'; 
-- no results

-- seach package with from_address_id = 432
/* 
id    contents               from_address_id  to_address_id
----  ---------------------  ---------------  -------------
384   Congratulatory letter  432              854          
2437  String                 432              484          
3529  Letter opener          432              585          
5436  Whiteboard             432              4984  
*/

-- search scans with Id 384 Contratylatory
SELECT * FROM "scans" WHERE "package_id" = 384;
/* Results
id  driver_id  package_id  address_id  action  timestamp                 
--  ---------  ----------  ----------  ------  --------------------------
54  1          384         432         Pick    2023-07-11 19:33:55.241794
94  1          384         854         Drop    2023-07-11 23:07:04.432178
*/

-- search address with action Drop
SELECT * FROM "addresses" WHERE "id" = 854;
/* Results
id   address            type       
---  -----------------  -----------
854  2 Finnigan Street  Residential

*/

-- Query with JOINS
SELECT
   "packages"."contents",
   "to_address"."address",
   "to_address"."type"
FROM "packages"
JOIN "addresses" AS "from_address"
   ON "packages"."from_address_id" = "from_address"."id"
JOIN "addresses" AS "to_address"
   ON "packages"."to_address_id" = "to_address"."id" 
WHERE "from_address"."address" = '900 Somerville Avenue'
   AND "packages"."contents" LIKE '%congratulatory%';