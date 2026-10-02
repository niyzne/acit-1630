-- In 1.sql, find the names and cities of all traditional public schools in Massachusetts. Do not include charter schools. The type column in the schools table distinguishes public schools from charter schools.

-- SELECT "name", "city"
-- FROM "schools"
-- WHERE "type" LIKE '%Public%';

-- In 2.sql, find the names of school districts that are no longer operational. A non-operational district has (non-op) at the end of its name.

-- SELECT "name"
-- FROM "districts"
-- WHERE "name" LIKE '%(non-op)%';

-- In 3.sql, find the average per-pupil expenditure across all districts. Name the output column Average District Per-Pupil Expenditure. The per_pupil_expenditure column already contains each district’s average expenditure, and each district should be weighted equally.

-- SELECT AVG("per_pupil_expenditure") AS "Average District Per-Pupil Expenditure"
-- FROM "expenditures";

-- In 4.sql, find the 10 cities with the most traditional public schools. Return the city and number of public schools, ordered by school count from greatest to least. Break ties alphabetically by city.

-- SELECT "city", COUNT("name")
-- FROM "schools"
-- WHERE "type" LIKE '%Public%'
-- GROUP BY "city"
-- ORDER BY COUNT("name") DESC, "city" ASC
-- LIMIT 10;

-- In 5.sql, find cities with three or fewer traditional public schools. Return the city and number of public schools, ordered by school count from greatest to least. Break ties alphabetically by city.

-- SELECT "city", COUNT("name")
-- FROM "schools"
-- WHERE "type" LIKE '%Public%'
-- GROUP BY "city"
-- HAVING COUNT("name") <= 3
-- ORDER BY COUNT("name") DESC, "city" ASC

-- In 6.sql, find the names of all schools, public or charter, that reported a 100% graduation rate.

-- SELECT "name"
-- FROM "schools"
-- WHERE "id" IN (
--   SELECT "school_id"
--   FROM "graduation_rates"
--   WHERE "graduated" = 100
-- );

-- In 7.sql, find the names of all schools, public or charter, in the school district named Cambridge. The city of Cambridge contains several districts, so match the district name rather than assuming a district ID.

-- SELECT "schools"."name"
-- FROM "schools"
-- JOIN "districts"
--         ON "districts"."id" = "schools"."district_id"
-- WHERE "districts"."name" = 'Cambridge';

-- In 8.sql, display the name of every school district and the number of pupils enrolled in each district. Order the results by district name in ascending order.

-- SELECT "districts"."name", "expenditures"."pupils"
-- FROM "districts"
-- JOIN "expenditures"
--         ON "expenditures"."district_id" = "districts"."id"
-- ORDER BY "districts"."name" ASC

-- In 9.sql, find the name or names of the school district or districts with the smallest number of pupils. Return only the district name or names.
-- In 9.sql, find the name(s) of the school district(s) with the smallest number of pupils. Return only the district name(s).

-- SELECT "districts"."name"
-- FROM "districts"
-- JOIN "expenditures"
--         ON "expenditures"."district_id" = "districts"."id"
-- WHERE "pupils" IN (
--   SELECT MIN("expenditures"."pupils")
--   FROM "expenditures"
-- );

-- In 10.sql, find the 10 public school districts with the highest per-pupil expenditures. Return each district name and its per-pupil expenditure.

-- SELECT "districts"."name", "expenditures"."per_pupil_expenditure"
-- FROM "districts"
-- JOIN "expenditures"
--       ON "expenditures"."district_id" = "districts"."id"
-- ORDER BY "per_pupil_expenditure" DESC
-- LIMIT 10;

-- In 11.sql, display each school name, its per-pupil expenditure, and its graduation rate. Assume that a school spends the same amount per pupil as its district. Order the results by per-pupil expenditure from greatest to least, then by school name.

-- In 12.sql, find public school districts with both above-average per-pupil expenditures and an above-average percentage of teachers rated exemplary. Return the district name, per-pupil expenditure, and exemplary percentage. Order first by exemplary percentage from greatest to least, then by per-pupil expenditure from greatest to least.

-- sqlite> .schema
-- CREATE TABLE "districts" (
--     "id" INTEGER,
--     "name" TEXT,
--     "type" TEXT,
--     "city" TEXT,
--     "state" TEXT,
--     "zip" TEXT,
--     PRIMARY KEY("id")
-- );
-- CREATE TABLE "schools" (
--     "id" INTEGER,
--     "district_id" INTEGER,
--     "name" TEXT,
--     "type" TEXT,
--     "city" TEXT,
--     "state" TEXT,
--     "zip" TEXT,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("district_id") REFERENCES "districts"("id")
-- );
-- CREATE TABLE "graduation_rates" (
--     "id" INTEGER,
--     "school_id" INTEGER,
--     "graduated" NUMERIC,
--     "dropped" NUMERIC,
--     "excluded" NUMERIC,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("school_id") REFERENCES "schools"("id")
-- );
-- CREATE TABLE "expenditures" (
--     "id" INTEGER,
--     "district_id" INTEGER,
--     "pupils" INTEGER,
--     "per_pupil_expenditure" NUMERIC,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("district_id") REFERENCES "districts"("id")
-- );
-- CREATE TABLE "staff_evaluations" (
--     "id" INTEGER,
--     "district_id" INTEGER,
--     "evaluated" NUMERIC,
--     "exemplary" NUMERIC,
--     "proficient" NUMERIC,
--     "needs_improvement" NUMERIC,
--     "unsatisfactory" NUMERIC,
--     PRIMARY KEY("id"),
--     FOREIGN KEY("district_id") REFERENCES "districts"("id")
-- );
-- sqlite> 
