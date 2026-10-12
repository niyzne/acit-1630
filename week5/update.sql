-- 1. Liam Murphy changed his email address to liam.m@example.com. Find his row by member_id.
UPDATE member
SET email = 'liam.m@example.com'
WHERE member_id = 4;

-- 2. The instructors made Power Spin harder. Change its intensity to 5. Find the class by class_name.
UPDATE class
SET intensity = 5
WHERE class_name = 'Power Spin';

-- 3. Offering 4 (Cardio Kickboxing) is starting 30 minutes later. Use DATETIME to add 30 minutes to its current offering_datetime instead of typing the new value.
UPDATE offering
SET offering_datetime = DATETIME(offering_datetime, '+30 minutes')
WHERE offering_id = 4;

-- 4. The rooftop terrace is closed on 2026-10-22. Move every offering scheduled on that date to one day later. Match the date with DATE(offering_datetime) and use DATETIME to add one day.
UPDATE offering
SET offering_datetime = DATETIME(offering_datetime, '+1 day')
WHERE DATE(offering_datetime) = '2026-10-22';

-- 5. HIIT Express (offering 2) is popular. Move it from room 101 to room 104.
UPDATE offering
SET room_num = 104
WHERE offering_id = 2;

-- 6. Add 15 minutes to the duration of every class in the “Cardio” and “Kick Boxing” categories with a single statement. Use IN in the WHERE clause and calculate the new value from the current duration.
UPDATE class
SET duration = duration + 15
WHERE class_category IN ('Cardio', 'Kick Boxing');
