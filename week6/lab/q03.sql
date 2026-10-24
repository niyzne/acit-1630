-- 3. Retrieve all active rentals.

SELECT "game_id", "purchase_type"
FROM "library"
WHERE "purchase_type" = 'Rental'
  AND "expiry_date" >= DATE('now');
