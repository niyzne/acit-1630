-- 1. Write a SQL query to list the titles of all episodes in Cyberchase’s original season, Season 1.

-- SELECT "title"
-- FROM "episodes"
-- WHERE "season" = 1;

-- 2. List the season number of, and title of, the first episode of every season.

-- SELECT "season", "title"
-- FROM "episodes"
-- WHERE "episode_in_season" = 1;

-- 3. Find the production code for the episode “Hackerized!”.

-- SELECT "production_code"
-- FROM "episodes"
-- WHERE "title" = 'Hackerized!';

-- 4. Write a query to find the titles of episodes that do not yet have a listed topic.

SELECT "title"
FROM "episodes"
WHERE "topic" IS NULL;

-- 5. Find the title of the holiday episode that aired on December 31st, 2004.

-- 6. List the titles of episodes from season 6 2008 that were released early, in 2007.

-- 7. Write a SQL query to list the titles and topics of all episodes teaching fractions.

-- 8. Write a query that counts the number of episodes released in the last 6 years, from 2018 to 2023, inclusive.

--  1. You might find it helpful to know you can use BETWEEN with dates, such as BETWEEN ‘2000-01-01’ AND ‘2000-12-31’.

-- 9. Write a query that counts the number of episodes released in Cyberchase’s first 6 years, from 2002 to 2007, inclusive.

-- 10. Write a SQL query to list the ids, titles, and production codes of all episodes. Order the results by production code, from earliest to latest.

-- 11. List the titles of episodes from season 5, in reverse alphabetical order.

-- 12. Count the number of unique episode titles.

-- .schema
-- CREATE TABLE "episodes" (
--     "id" INTEGER,
--     "season" INTEGER,
--     "episode_in_season" INTEGER,
--     "title" TEXT,
--     "topic" TEXT,
--     "air_date" NUMERIC,
--     "production_code" TEXT,
--     PRIMARY KEY("id")
-- );
-- CREATE TABLE sqlite_stat1(tbl,idx,stat);
-- CREATE TABLE sqlite_stat4(tbl,idx,neq,nlt,ndlt,sample);
