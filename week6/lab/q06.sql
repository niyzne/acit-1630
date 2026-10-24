-- 6. List all games owned by users with a “Premium” subscription. Count purchases only.

SELECT DISTINCT "game"."title"
FROM "user"
JOIN "library"
    ON "user"."user_id" = "library"."user_id"
JOIN "game"
    ON "library"."game_id" = "game"."game_id"
WHERE "user"."subscription_type" = 'Premium'
  AND "library"."purchase_type" = 'Purchase';
