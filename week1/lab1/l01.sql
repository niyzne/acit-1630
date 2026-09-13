-- Q1: Get title, author, and translator columns from the longlist table

SELECT "title", "author", "translator"
FROM "longlist";

-- Q2: Limit result of the query above to 5 Limit result of the query above to 12

SELECT "title", "author", "translator"
FROM "longlist"
LIMIT 5;

-- Q3: Get title and author of all books nominated in 2022

SELECT "title", "author"
FROM "longlist"
WHERE "year" = 2022;

-- Q4: Get all books written by Willem Anker

SELECT "title", "author"
FROM "longlist"
WHERE "author" = 'Willem Anker';

-- Q5: Get title and format of all books released in paperback format

SELECT "title", "format"
FROM "longlist"
WHERE "format" = 'paperback';

-- Q6: Get title and format of all books NOT released in paperback format

SELECT "title", "format"
FROM "longlist"
WHERE "format" != 'paperback';

-- Q7: Get title and author of all books nominated in 2018 and 2019

SELECT "title", "author"
FROM "longlist"
WHERE "year" = 2018 OR "year" = 2019;

-- Q8: Get title and author of all books nominated in 2019 and 2020 in hardcover format

SELECT "title", "author"
FROM "longlist"
WHERE ("year" = 2019 OR "year" = 2020) AND "format" = 'hardcover';

-- Q9: Create one original query of your own.

SELECT *
FROM "longlist"
WHERE "format" = 'paperback' 
  AND "year" = 2018 
  AND "rating" >= 3.67
LIMIT 10;
