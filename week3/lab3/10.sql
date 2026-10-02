-- In 10.sql, find the 10 public school districts with the highest per-pupil expenditures. Return each district name and its per-pupil expenditure.

SELECT "districts"."name", "expenditures"."per_pupil_expenditure"
FROM "districts"
JOIN "expenditures"
      ON "expenditures"."district_id" = "districts"."id"
ORDER BY "per_pupil_expenditure" DESC
LIMIT 10;
