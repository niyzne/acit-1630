-- In 4.sql, find the 10 cities with the most traditional public schools. Return the city and number of public schools, ordered by school count from greatest to least. Break ties alphabetically by city.

SELECT "city", COUNT("name")
FROM "schools"
WHERE "type" LIKE '%Public%'
GROUP BY "city"
ORDER BY COUNT("name") DESC, "city" ASC
LIMIT 10;
