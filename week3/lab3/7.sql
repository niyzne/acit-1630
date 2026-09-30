-- In 7.sql, find the names of all schools, public or charter, in the school district named Cambridge. The city of Cambridge contains several districts, so match the district name rather than assuming a district ID.

SELECT "schools"."name"
FROM "schools"
JOIN "districts"
        ON "districts"."id" = "schools"."district_id"
WHERE "districts"."name" = 'Cambridge';
