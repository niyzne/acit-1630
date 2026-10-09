-- example code imported

PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS member_staging;
.import --csv member.csv member_staging

INSERT INTO member (member_id, first_name, last_name, email)
SELECT member_id, first_name, last_name, email
FROM member_staging;

DROP TABLE member_staging;
