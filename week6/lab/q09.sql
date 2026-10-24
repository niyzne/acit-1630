-- 9. List users who have purchased at least two different games, with their game counts. Use GROUP BY and HAVING.

SELECT "user"."name", COUNT(DISTINCT "library"."game_id")
FROM "user"
JOIN "library"
    ON "user"."user_id" = "library"."user_id"
WHERE "library"."purchase_type" = 'Purchase'
GROUP BY "user"."user_id", "user"."name"
HAVING COUNT(DISTINCT "library"."game_id") >= 2;
