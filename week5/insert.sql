INSERT INTO class (class_id, class_name, class_category, intensity, duration)
VALUES
    (1, 'Morning Flow Yoga', 'Yoga', 2, 60),
    (2, 'Power Spin', 'Spin', 4, 45),
    (3, 'Cardio Blast', 'Cardio', 3, 45),
    (4, 'HIIT Express', 'HIIT', 5, 20),
    (5, 'Cardio Kickboxing', 'Kick Boxing', 4, 60);


INSERT INTO offering (offering_id, class_id, offering_datetime, room_num)
VALUES
    (1, 1, '2026-10-19 07:00:00', 102),
    (2, 4, '2026-10-19 12:00:00', 101),
    (3, 2, '2026-10-19 18:00:00', 103),
    (4, 5, '2026-10-20 18:00:00', 102),
    (5, 3, '2026-10-22 12:00:00', 104);


INSERT INTO registration (member_id, offering_id)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 4),
    (1, 5);

-- INSERT INTO table_name (column_name [, column_name ...])
-- VALUES (value [, value ...])
-- RETURNING column_name [, column_name ...];

-- CREATE TABLE class (
--     class_id INTEGER PRIMARY KEY,
--     class_name TEXT NOT NULL,
--     class_category TEXT NOT NULL
--         CHECK (class_category IN ('Yoga', 'Spin', 'Cardio', 'Dance', 'HIIT', 'Kick Boxing')),
--     intensity INTEGER NOT NULL CHECK (intensity BETWEEN 1 AND 5),
--     duration INTEGER NOT NULL CHECK (duration > 0)
-- );
--
-- CREATE TABLE offering (
--     offering_id INTEGER PRIMARY KEY,
--     class_id INTEGER NOT NULL,
--     offering_datetime DATETIME NOT NULL,
--     room_num INTEGER NOT NULL,
--     FOREIGN KEY (class_id) REFERENCES class (class_id),
--     FOREIGN KEY (room_num) REFERENCES room (room_num)
-- );
--
-- CREATE TABLE registration (
--     member_id INTEGER NOT NULL,
--     offering_id INTEGER NOT NULL,
--     FOREIGN KEY (member_id) REFERENCES member(member_id),
--     FOREIGN KEY (offering_id) REFERENCES offering(offering_id),
--     PRIMARY KEY (member_id, offering_id)
-- );
