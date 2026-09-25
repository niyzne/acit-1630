-- In 5.sql, find cities with three or fewer traditional public schools. Return the city and number of public schools, ordered by school count from greatest to least. Break ties alphabetically by city.

SELECT "city", COUNT("name")
FROM "schools"
WHERE "type" LIKE '%Public%'
GROUP BY "city"
HAVING COUNT("name") <= 3
ORDER BY COUNT("name") DESC, "city" ASC
