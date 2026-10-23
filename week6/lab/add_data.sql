PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS staging_users;
.import --csv random_users.csv staging_users

INSERT INTO user (name, email, subscription_type)
SELECT name, email, subscription_type
FROM staging_users;

DROP TABLE staging_users;


DROP TABLE IF EXISTS staging_games;
.import --csv random_games.csv staging_games

INSERT INTO game (title, genre, release_date, rating, rental_price, purchase_price)
SELECT title, genre, release_date, rating, rental_price, purchase_price
FROM staging_games;

DROP TABLE staging_games;

INSERT INTO library
    (library_id, user_id, game_id, purchase_type,
     purchase_date, launch_date, expiry_date)
VALUES
    (1, 1, 1, 'Purchase', '2026-09-01', '2026-09-02', NULL),
    (2, 1, 2, 'Purchase', '2026-09-03', NULL, NULL),
    (3, 2, 3, 'Rental',   '2026-10-01', '2026-10-05', '2026-10-31'),
    (4, 2, 4, 'Rental',   '2026-08-01', '2026-08-10', '2026-08-31'),
    (5, 3, 1, 'Rental',   '2026-08-01', '2026-09-05', '2026-08-31'),
    (6, 3, 2, 'Purchase', '2026-09-10', NULL, NULL),
    (7, 4, 3, 'Rental',   '2026-10-10', NULL, '2026-11-09'),
    (8, 4, 4, 'Purchase', '2026-09-15', '2026-09-16', NULL),
    (9, 1, 3, 'Rental',   '2026-07-01', '2026-07-15', '2026-07-31'),
    (10, 2, 1, 'Purchase','2026-10-05', '2026-10-06', NULL);
