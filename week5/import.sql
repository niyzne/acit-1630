-- example code imported

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS member_staging;
.import --csv member.csv member_staging

INSERT INTO member (member_id, first_name, last_name, email)
SELECT member_id, first_name, last_name, email
FROM member_staging;

DROP TABLE member_staging;

DROP TABLE IF EXISTS room_staging;
.import --csv room.csv room_staging

INSERT INTO room (room_num, capacity, description)
SELECT room_num, capacity, description
FROM room_staging;

DROP TABLE room_staging;

-- CREATE TABLE member (
--     member_id INTEGER PRIMARY KEY,
--     first_name TEXT NOT NULL,
--     last_name TEXT NOT NULL,
--     email TEXT NOT NULL UNIQUE
-- );
--
-- CREATE TABLE room (
--     room_num INTEGER PRIMARY KEY,
--     capacity INTEGER NOT NULL CHECK (capacity > 0),
--     description TEXT NOT NULL
-- );
