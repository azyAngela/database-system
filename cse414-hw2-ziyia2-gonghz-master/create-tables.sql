CREATE TABLE Flights (fid int PRIMARY KEY, month_id int REFERENCES Months,  day_of_month int,  
day_of_week_id int REFERENCES Weekdays,  carrier_id varchar(7) REFERENCES Carriers,  
flight_num int,  origin_city varchar(34), 
origin_state varchar(47), dest_city varchar(34), 
dest_state varchar(46),   departure_delay int,
 axi_out int,  arrival_delay int,
canceled int,  actual_time int, distance int,
capacity int, price int
);
CREATE TABLE Carriers (cid varchar(7) PRIMARY KEY, name varchar(83));
CREATE TABLE Months (mid int PRIMARY KEY, month varchar(9));
CREATE TABLE Weekdays (did int PRIMARY KEY, day_of_week varchar(9));
.mode csv
.import carriers.csv Carriers
.import flights-small.csv Flights
.import months.csv Months
.import weekdays.csv Weekdays

