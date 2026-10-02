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


-- CREATE TABLE IF NOT EXISTS "Books" (
--     "title" TEXT NOT NULL,
--     "published_year" INTEGER CHECK (
--         "published_year" BETWEEN 1900 AND 2025
--     ),
--     "price" REAL NOT NULL CHECK ("price" > 0),
--     "book_id" INTEGER,
--     "author_id" INTEGER,
--     PRIMARY KEY ("book_id"),
--     FOREIGN KEY ("author_id") REFERENCES "Authors" ("author_id")
-- );
--
-- CREATE TABLE IF NOT EXISTS "Authors" (
--     "name" TEXT NOT NULL UNIQUE,
--     "birth_year" INTEGER CHECK ("birth_year" <= 2023),
--     "author_id" INTEGER,
--     PRIMARY KEY ("author_id")
-- );
--
-- CREATE TABLE IF NOT EXISTS "Members" (
--     "name" TEXT NOT NULL,
--     "join_date" TEXT DEFAULT CURRENT_DATE,
--     "membership_status" TEXT NOT NULL
--         CHECK ("membership_status" IN ('Active', 'Inactive')),
--     "member_id" INTEGER,
--     PRIMARY KEY ("member_id")
-- );
