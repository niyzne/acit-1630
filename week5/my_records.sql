-- 1. Add yourself as member 6, using your own first and last name and an email address ending in @example.com.
INSERT INTO member (member_id, first_name, last_name, email)
VALUES (6, 'name', 'lastname', 'name.lastname@example.com');

-- 2. Add Sunset Yoga
INSERT INTO class (class_id, class_name, class_category, intensity, duration)
VALUES (6, 'Sunset Yoga', 'Yoga', 1, 45);

-- 3. Add offering 6
INSERT INTO offering (offering_id, class_id, offering_datetime, room_num)
VALUES (6, 6, '2026-10-24 19:00:00', 104);

-- 4. Register yourself for offerings 6 and 3
INSERT INTO registration (member_id, offering_id)
VALUES (6, 6);

INSERT INTO registration (member_id, offering_id)
VALUES (6, 3);

-- Error: UNIQUE constraint failed: registration.member_id, registration.offering_id
-- INSERT INTO registration (member_id, offering_id)
-- VALUES (6, 3);

-- Error: CHECK constraint failed: intensity BETWEEN 1 AND 5
-- INSERT INTO class (class_id, class_name, class_category, intensity, duration)
-- VALUES (7, 'Extreme Yoga', 'Yoga', 6, 45);
