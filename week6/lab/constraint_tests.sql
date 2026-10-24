PRAGMA foreign_keys = ON;

-- Test 1: Duplicate email.

-- Error: UNIQUE constraint failed: user.email
-- INSERT INTO "user" ("name", "email", "subscription_type")
-- VALUES ('Test User', 'wei.chen@example.com', 'Basic');



-- Test 2: Invalid subscription type.

-- Error: CHECK constraint failed: subscription_type
-- INSERT INTO "user" ("name", "email", "subscription_type")
-- VALUES ('Test User', 'invalid.subscription@example.com', 'Gold');



-- Test 3: User ID does not exist.

-- Error: FOREIGN KEY constraint failed
-- INSERT INTO "library" ("user_id", "game_id", "purchase_type", "purchase_date", "launch_date", "expiry_date")
-- VALUES (9999, 1, 'Purchase', '2026-10-20', NULL, NULL);
