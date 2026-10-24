-- 8. Calculate the average rental price and average purchase price of games whose genres include “Horror”.

SELECT AVG("rental_price"), AVG("purchase_price")
FROM "game"
WHERE "genre" LIKE '%Horror%';
