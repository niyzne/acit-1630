PRAGMA foreign_keys = ON;

-- 1. Delete Aisha Okafor's registration for offering 2.
DELETE FROM registration
WHERE member_id = 3 AND offering_id = 2;

-- 2. Delete all registrations for offering 1.
DELETE FROM registration
WHERE offering_id = 1;

-- 3. Delete registrations for offering 5 before deleting the offering.
DELETE FROM registration
WHERE offering_id = 5;

DELETE FROM offering
WHERE offering_id = 5;

-- 4. Delete Sofia Rossi (member 5), who has no registrations.
DELETE FROM member
WHERE member_id = 5;

-- Answer 1: Deleting offering 5 failed because registration rows referenced it through a foreign key. The registrations had to be deleted before the offering.
-- Answer 2: DELETE FROM registration without a WHERE clause would delete all rows from registration, but the table itself would remain.
