-- In 9.sql, find the name or names of the school district or districts with the smallest number of pupils. Return only the district name or names.

SELECT "districts"."name"
FROM "districts"
JOIN "expenditures"
        ON "expenditures"."district_id" = "districts"."id"
WHERE "pupils" IN (
  SELECT MIN("expenditures"."pupils")
  FROM "expenditures"
);
