-- In 12.sql, find public school districts with both above-average per-pupil expenditures and an above-average percentage of teachers rated exemplary. Return the district name, per-pupil expenditure, and exemplary percentage. Order first by exemplary percentage from greatest to least, then by per-pupil expenditure from greatest to least.

SELECT "districts"."name", "expenditures"."per_pupil_expenditure", "staff_evaluations"."exemplary"
FROM "districts"
JOIN "expenditures"
    ON "expenditures"."district_id" = "districts"."id"
JOIN "staff_evaluations"
    ON "staff_evaluations"."district_id" = "districts"."id"
WHERE "exemplary" > (
  SELECT AVG("exemplary")
  FROM "staff_evaluations"
)
AND "per_pupil_expenditure" > (
  SELECT AVG("per_pupil_expenditure")
  FROM "expenditures"
)
AND "districts"."type" = 'Public School District'
ORDER BY 
    "exemplary" DESC,
    "per_pupil_expenditure" DESC;