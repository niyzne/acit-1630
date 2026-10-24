-- 4. Calculate the combined total revenue from purchases and rentals.

SELECT
    (SELECT SUM("game"."purchase_price")
     FROM "library"
     JOIN "game"
         ON "library"."game_id" = "game"."game_id"
     WHERE "library"."purchase_type" = 'Purchase')
    +
    (SELECT SUM("game"."rental_price")
     FROM "library"
     JOIN "game"
         ON "library"."game_id" = "game"."game_id"
     WHERE "library"."purchase_type" = 'Rental');
