-- 10. List users who first launched a rented game after it expired.

SELECT DISTINCT "user"."name"
FROM "user"
JOIN "library"
    ON "user"."user_id" = "library"."user_id"
WHERE "library"."purchase_type" = 'Rental'
  AND "library"."launch_date" > "library"."expiry_date";
