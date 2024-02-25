SELECT W.day_of_week AS day_of_week, AVG(F.arrival_delay) AS delay
FROM Flights AS F, WEEKDAYS AS W
WHERE F.day_of_week_id = W.did
GROUP BY F.day_of_week_id
ORDER BY delay
LIMIT 1;
