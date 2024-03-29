SELECT C.name AS carrier, MIN(F.price) AS min_price
FROM Flights AS F, Carriers AS C
WHERE F.carrier_id = C.cid AND ((F.origin_city='Seattle WA' AND F.dest_city='New York NY') OR 
(F.origin_city='New York NY' AND F.dest_city='Seattle WA'))
GROUP BY c.name;


