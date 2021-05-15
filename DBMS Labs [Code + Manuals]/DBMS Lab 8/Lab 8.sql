B.1 Commands and Output:
1.	Give average of the total fare.
select avg(total_fare) from ticket_header
OUTPUT:
 
2.	Give the total collection of fare.
select sum(fare) from ticket_detail
 OUTPUT:
 
3.	Which bus runs for minimum distance?
select route_id, distance from route_header where distance=(select min(distance) from route_header)
OUTPUT:
 
4.	Give the total number of people who have traveled so far group by ticket number.
select ticket_no,count(ticket_no) from ticket_detail group by ticket_no
OUTPUT;
 
5.	Find out total fare for routes with same origin.
select origin,sum(fare) from route_header group by origin 
OUTPUT:
 
6.	Find out total fare for routes with origin as madras.
select origin,sum(fare) from route_header group by origin having origin='Madras'
OUTPUT;
 
7.	Calculate average fare for each ticket.
select ticket_no,avg(fare) from ticket_detail group by ticket_no
OUTPUT:
 
8.	Find out details of fleets that run on route number 33 or 25.
select * from route_header natural join fleet_header where route_no=33 or route_no=25 
OUTPUT:
 
9.	Count how many male or female passengers have travelled till now.
select sex,count(sex) from ticket_detail group by sex 
OUTPUT: 
 
10.	Count total number of routes for each category except category 02.
select cat_code,count(route_id) from route_header group by cat_code having cat_code <> 02
OUTPUT:
 
11.	Find out place names for which nonstop buses run.
select place_name from place_header natural join route_detail where nonstop='N'
OUTPUT:
 
12.	Find out details of tickets from ticket header having more than one passenger.
select * from ticket_header where ticket_no in
(select th.ticket_no from ticket_header th , ticket_detail td
where th.ticket_no=td.ticket_no
group by th.ticket_no having count(td.ticket_no)>1)
OUTPUT:
 
13.	Find out details of route having category code same as category code of a route having maximum distance.
select * from route_header where cat_code in (select cat_code from route_header where distance=(select max(distance) from route_header))
OUTPUT:
 
14.	Display distinct ticket number from both ticket_header and ticket_detail.
select distinct ticket_no from ticket_header natural join ticket_detail
OUTPUT:
 
15.	Display all ticket numbers from both ticket_header and ticket_detail.
select ticket_no from ticket_header UNION select ticket_no from ticket_detail
OUTPUT:
 
16.	Display only common fleet_id’s that are present in fleet_header and ticket_header.
select fleet_id from fleet_header INTERSECT select fleet_id from ticket_header
OUTPUT:
 
17.	Select distinct route_id from route_header and not in route_detail using both the tables.
select distinct route_id from route_header MINUS select route_id from route_detail
OUTPUT:
 
18.	Display distinct route_id’s from route header and route_detail.
select distinct route_id from route_header UNION select route_id from route_detail
OUTPUT:
 
19.	Display all category_code from route_header and category_header.
select cat_code from route_header UNION select cat_code from category_header
OUTPUT:
 
20.	Display only common place_id’s that are present in place_header and route_detail.
select place_id from place_header INTERSECT select place_id from route_detail
OUTPUT:
 
21.	Create user U1.
TO BE DONE IN EXPERIMENT 10
22.	Create table teacher with columns, teacher_id, name, qualification, experience. Grant all privileges on teacher table to user U1.
TO BE DONE IN EXPERIMENT 10
23.	Select common ticket_numbers from ticket_header and ticket_detail where the route_id’s are smaller than the route_id which belong to place id as 01.
select ticket_no from ticket_detail INTERSECT (select ticket_no from ticket_header where route_id<all(select route_id from route_detail where place_id=1))
OUTPUT:
 
24.	Select unique fleet_id’s from ticket_header and fleet_header where the route_id is greater than route_id’s in route_header which belongs to the category_code as 01.
select distinct fleet_id from ticket_header INTERSECT (select distinct fleet_id from fleet_header where route_id>all(select route_id from route_header where cat_code=1))
OUTPUT:
 
25.	Create view route_vw2 on table route_header with columns route_no, cat_code, orgin and destination.
create view route_vw2 as select route_no, cat_code, origin, destination from route_header
OUTPUT:
 
VIEW ALREADY CREATED EARLIER.
26.	Display records of view route_vw2.
select * from route_vw2
OUTPUT:
 
27.	Try to insert record into view route_vw2 and state the output if possible else explain error message.
select * from route_header
insert into route_vw2 values(34,1,'ABC','XYZ')
OUTPUT:
 
Reason: This reflects in original table as well, view is part of the complete table there should be primary key and if there is no primary key we cannot insert in the view from the original table
insertion deletion, updation also cannot be done in complex view

28.	Create view route_category_vw to display those routes which belong to category ‘delux’.
create view route_category_vw as select route_id,cat_desc from route_header natural join category_header where cat_desc='delux'
