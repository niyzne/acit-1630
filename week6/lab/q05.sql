-- 5. Display the names of users who own the most games, including ties. Count purchases only.

SELECT "user"."name"
FROM "user"
JOIN "library"
    ON "user"."user_id" = "library"."user_id"
WHERE "library"."purchase_type" = 'Purchase'
GROUP BY "user"."user_id", "user"."name"
HAVING COUNT(*) = (
    SELECT MAX("game_count")
    FROM (
        SELECT COUNT(*) AS "game_count"
        FROM "library"
        WHERE "purchase_type" = 'Purchase'
        GROUP BY "user_id"
    )
);
