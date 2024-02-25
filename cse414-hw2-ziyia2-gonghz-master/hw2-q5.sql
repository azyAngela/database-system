SELECT C.name AS name, (SUM(F.canceled) * 1.0 /COUNT(*)) * 100 AS percent
FROM Flights AS F, Carriers AS C
WHERE F.carrier_id = C.cid AND F.origin_city = "Seattle WA" 
GROUP BY C.name 
HAVING percent > 0.6
ORDER BY percent DESC;
