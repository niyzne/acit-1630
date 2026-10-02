-- In 11.sql, display each school name, its per-pupil expenditure, and its graduation rate. Assume that a school spends the same amount per pupil as its district. Order the results by per-pupil expenditure from greatest to least, then by school name.

SELECT "schools"."name", "expenditures"."per_pupil_expenditure", "graduation_rates"."graduated"
FROM "districts"
JOIN "expenditures"
    ON "expenditures"."district_id" = "districts"."id"
JOIN "schools"
    ON "schools"."district_id" = "districts"."id"
JOIN "graduation_rates"
    ON "graduation_rates"."school_id" = "schools"."id"
ORDER BY 
    "per_pupil_expenditure" DESC,
    "schools"."name" ASC;
