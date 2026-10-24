PRAGMA foreign_keys = ON;

-- 1. List library records with no first launch date.

SELECT *
FROM "library"
WHERE "launch_date" IS NULL;


-- 2. Upgrade one Basic user to Premium.

SELECT *
FROM "user"
WHERE "user_id" = 1;

UPDATE "user"
SET "subscription_type" = 'Premium'
WHERE "user_id" = 1
  AND "subscription_type" = 'Basic';

SELECT *
FROM "user"
WHERE "user_id" = 1;

-- 3. Set the first launch date for one unlaunched game. Choose a purchase or an active rental and use a date on or after its purchase date. For a rental, the launch date must also be before its expiry date.

SELECT *
FROM "library"
WHERE "library_id" = 2;

UPDATE "library"
SET "launch_date" = '2026-09-04'
WHERE "library_id" = 2
  AND "launch_date" IS NULL;

SELECT *
FROM "library"
WHERE "library_id" = 2;

-- 4. Insert a fictional test user with a unique @example.com email address, then insert one library record referencing that user and an existing game.

INSERT INTO "user" ("name", "email", "subscription_type")
VALUES ('Test User', 'testuser@example.com', 'Basic');

SELECT *
FROM "user"
WHERE "email" = 'testuser@example.com';

INSERT INTO "library"
VALUES (11, 51, 1, 'Purchase', '2026-10-20', NULL, NULL);

SELECT *
FROM "library"
WHERE "library_id" = 11;

-- 5. Delete the test user's library record and the test user.

SELECT *
FROM "library"
WHERE "user_id" = (
    SELECT "user_id"
    FROM "user"
    WHERE "email" = 'testuser@example.com'
);

DELETE FROM "library"
WHERE "user_id" = (
    SELECT "user_id"
    FROM "user"
    WHERE "email" = 'testuser@example.com'
);

SELECT *
FROM "library"
WHERE "user_id" = (
    SELECT "user_id"
    FROM "user"
    WHERE "email" = 'testuser@example.com'
);

DELETE FROM "user"
WHERE "email" = 'testuser@example.com';

SELECT *
FROM "user"
WHERE "email" = 'testuser@example.com';

-- The library record must be deleted before the user because library.user_id references user.user_id through a foreign key.
-- Deleting the library record first prevents a foreign key violation.

SELECT COUNT(*) AS "user_count"
FROM "user";

SELECT COUNT(*) AS "game_count"
FROM "game";

SELECT COUNT(*) AS "library_count"
FROM "library";
