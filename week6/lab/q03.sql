-- 3. Retrieve all active rentals.

SELECT "game_id", "purchase_type"
FROM "library"
WHERE "purchase_type" = 'Rental' 
  AND "expiry_date" > DATE('now');

-- is rental AND has it expired?
-- smth greater than or equal to
