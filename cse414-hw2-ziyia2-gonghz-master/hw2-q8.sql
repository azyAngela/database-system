SELECT C.name AS name, SUM(F.departure_delay) AS delay
FROM Flights AS F, Carriers AS C
WHERE F.carrier_id = C.cid AND F.canceled = 0
GROUP BY c.name;