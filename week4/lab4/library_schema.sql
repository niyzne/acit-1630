-- ## Part 1: Table Creation
--
-- Create a library_schema.sql file containing DDL SQL statements to create the specified schema.
--
-- Using your editor (not DBBrowser or other GUI plugin) and the SQLite CLI create the following three tables with the given structure and constraints :
--
-- 1. Books
--     - book_id (INTEGER, Primary Key)
--     - title (TEXT, Not Null)
--     - author_id (INTEGER, Foreign Key referencing Authors.author_id)
--     - published_year (INTEGER, Must be between 1900 and 2025)
--     - price (REAL, Not Null, Must be positive)
-- 2. Authors
--     - author_id (INTEGER, Primary Key)
--     - name (TEXT, Not Null, Unique)
--     - birth_year (INTEGER, Must be <= 2023)
-- 3. Members
--     - member_id (INTEGER, Primary Key)
--     - name (TEXT, Not Null)
--     - join_date (TEXT, Default current date)
--     - membership_status (TEXT, Not Null, Only Active or Inactive)


CREATE TABLE IF NOT EXISTS "Authors" (
    "author_id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL DISTINCT
    "birth_year" INTEGER -- somehow <= 2023
);

CREATE TABLE IF NOT EXISTS "Books" (
    "id" INTEGER PRIMARY KEY,
    "title" TEXT NOT NULL
    "author_id" INTEGER FOREIGN KEY --somehow refernecing to Authors.author_id
    "published_year" INTEGER -- between 1900 and 2025
    "price" REAL NOT NULL -- must be positive
);

CREATE TABLE IF NOT EXISTS "Members" (
    "member_id" INTEGER PRIMARY KEY,
    "name" TEXT NOT NULL DISTINCT,
    "join_date" TEXT -- default current date?
    "membership_status" TEXT NOT NULL -- maybe boolean statemnt?
);
