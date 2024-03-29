SELECT C.name AS name, F1.flight_num AS F1_flight_num, F1.origin_city AS F1_origin_city,
F1.dest_city AS F1_dest_city, F1.actual_time AS F1_actual_time,
F2.flight_num AS F2_flight_num, F2.origin_city AS F2_origin_city,
F2.dest_city AS F2_dest_city, F2.actual_time AS F2_actual_time,
F1.actual_time + F2.actual_time AS actual_time
FROM Flights AS F1, Flights AS F2, Carriers AS C, Months AS M
WHERE F1.origin_city = 'Boston MA' AND F2.dest_city='Seattle WA' AND F1.dest_city = F2.origin_city AND 
F1.carrier_id = F2.carrier_id AND F1.month_id = M.mid AND M.month='July' AND F1.month_id = F2.month_id AND 
F1.day_of_month = 4 AND F1.day_of_month = F2.day_of_month AND f1.carrier_id = C.cid AND
F1.actual_time + F2.actual_time < 480;
