SELECT DISTINCT F.flight_num AS flight_num
FROM Flights AS F, Carriers AS C, Weekdays AS W
WHERE F.origin_city = 'Seattle WA' AND F.dest_city = 'Boise ID' 
    AND C.name = "Alaska Airlines Inc." AND W.day_of_week='Friday' 
    AND F.carrier_id=c.cid AND F.day_of_week_id=w.did;
