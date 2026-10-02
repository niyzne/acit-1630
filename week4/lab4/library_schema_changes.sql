-- ## 4 Part 2: Altering Tables
--
-- Create a library_schema_changes.sql file containing DDL SQL statements to perform the following modifications:
--
-- 1. Add a new column email (TEXT, Not Null) to the Members table.
-- 2. Add a new constraint to the Books table ensuring that the price is at least 5.
--     - Note: You may need to DROP something to do the task 2

ALTER TABLE "Members"
ADD COLUMN "email" TEXT NOT NULL;

ALTER TABLE "Books"
DROP COLUMN "price";

ALTER TABLE "Books"
ADD COLUMN "price" REAL NOT NULL CHECK ("price" >= 5);
