-- In 8.sql, display the name of every school district and the number of pupils enrolled in each district. Order the results by district name in ascending order.

SELECT "districts"."name", "expenditures"."pupils"
FROM "districts"
JOIN "expenditures"
        ON "expenditures"."district_id" = "districts"."id"
ORDER BY "districts"."name" ASC
