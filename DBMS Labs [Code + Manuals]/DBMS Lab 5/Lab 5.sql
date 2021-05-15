1.	select * from route_header where origin='Madras' and destination='Cochin'
2.	select * from route_header where origin like 'M%'
3.	select * from route_header where fare between 30 and 50
4.	select fare,origin from route_header where fare>15
5.	select * from place_header where place_name like 'M%'
6.	select * from route_header where distance between 200 and 400
7.	select * from fleet_header where route_id='102' or route_id='103'
8.	select * from route_detail where nonstop='N'
9.	select * from category_header where cat_desc like 's% %t'
10.	select * from category_header where cat_code='1' or cat_code='2' or cat_code='4'
11.	select * from place_header where bus_station='Charminar'
12.	select * from route_header where fare<70 and distance>120
13.	select  * from ticket_detail where sex='F' and age>10
14.	select fare+0.1*fare as new_fare
from route_header
15.	select * from route_detail where route_id='101' or route_id='105' or route_id='107'
16.	select * from route_header where origin='Madras' and distance>300 or destination='Madras' and distance<300
17.	create table temp_MPSTME
(
place_id number(5) primary key, 
place_name varchar2(20) not null, 
place_address varchar2(50)
)
18.	insert into temp_MPSTME
select place_id,place_name,place_address from place_header where place_id between 1 and 4 and place_name like 'M%'
