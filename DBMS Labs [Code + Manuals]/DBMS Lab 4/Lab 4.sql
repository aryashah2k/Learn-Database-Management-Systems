B.1.1 : Execution of each SQL query used to complete the task given in PART A :
category_header
 
Command:
insert into Category_header
values (01,'super delux')

insert into Category_header
values (02,'delux')

insert into Category_header
values (03,'super fast')

insert into Category_header
values (04,'normal')

select *
from Category_header
Output:
 
route_header
 
Command:
insert into route_header
values (101,33,01,'Madurai','Madras',35,250,50)

insert into route_header
values (102,25,02,'Trichy','Madurai',40,159,50)

insert into route_header
values (103,15,03,'Thanjavur','Madurai',59,140,50)

insert into route_header
values (104,36,04,'Madras','Bangalore',79,375,50)

insert into route_header
values (105,40,01,'Bangalore','Madras',80,375,50)

insert into route_header
values (106,38,02,'Madras','Madurai',39,250,50)

insert into route_header
values (107,39,03,'Hydrabad','Madras',50,430,50)

insert into route_header
values (108,41,04,'Madras','Cochin',47,576,50)
Output:
 

Place Header:
 

Command:
insert into Place_Header
values (01,'Madras','10,ptcroad','Parrys')

insert into Place_Header
values (02,'Madurai','21,canalbankroad','Kknagar')

insert into Place_Header
values (03,'Trichy','11,firstcrossroad','Bheltown')

insert into Place_Header
values (04,'Bangalore','15,firstmainroad','Cubbonpark')

insert into Place_Header
values (05,'Hydrabad','115,lakeviewroad','Charminar')

insert into Place_Header
values (06,'Thanjavur','12,templeroad','Railwayjn.')
Output:
 
Fleet Header:
 
Command:
insert into Fleet_Header
values (01,'04-10-1996',101,01)

insert into Fleet_Header
values (02,'04-10-1996',101,01)

insert into Fleet_Header
values (03,'04-10-1996',101,01)

insert into Fleet_Header
values (04,'04-10-1996',102,02)

insert into Fleet_Header
values (05,'04-10-1996',102,03)

insert into Fleet_Header
values (06,'04-10-1996',103,04)

select * 
from Fleet_Header
Output:
 
Ticket Header:
 
 
 

Command:
insert into Ticket_Header
values (01,01,'04-10-1996','05-10-1996','15:00:00','Parrys','Madras','Madurai',1,1,60,101)

insert into Ticket_Header
values (02,02,'04-12-1996','05-05-1996','09:00:00','Kknagar','Madurai','Madras',2,1,60,102)

insert into Ticket_Header
values (03,03,'04-21-1996','05-15-1996','21:00:00','Cubbonpark','Bangalore','Madras',4,2,400,101)

select *
from Ticket_Header
Output:
 

Ticket Detail:
 
Command:
insert into Ticket_Detail
values (01,'Charu','F',24,14.00)

insert into Ticket_Detail
values (01,'Lathu','F',10,15.55)

insert into Ticket_Detail
values (02,'Anand','M',28,17.80)

insert into Ticket_Detail
values (02,'Guatham','M',28,16.00)

insert into Ticket_Detail
values (02,'Bala','M',09,17.65)

insert into Ticket_Detail
values (05,'Sandip','M',30,18.00)

select *
from Ticket_Detail
Output:
 

Route Detail:
 
Command:
insert into Route_Detail
values (105,01,'N')

insert into Route_Detail
values (012,02,'S')

insert into Route_Detail
values (106,01,'S')

insert into Route_Detail
values (108,05,'N')

insert into Route_Detail
values (106,02,'N')

select *
from Route_Detail
Output:
 
B.1.2 : Screenshots of the tables designed with inserted records.
a. Code
select *
from category_header

Output
 
b. Code
select place_name,place_address
from place_header
Output
 
c. Code
select fare+10 as new_fare
from route_header
Output

 
d. Code
select distinct destination
from route_header
Output
 
e. Code
desc route_detail
Output
 
f. Code
update ticket_detail
set fare=fare+1
where name='Guatham'

select *
from ticket_detail
Output
 
g. Code
update ticket_detail
set age=30
where name='Anand'

select *
from ticket_detail

Output
 
h. Code
insert into route_detail
values(105,01,'S')

select *
from route_detail
Output
 
i. Code
delete from route_detail
where route_id=105 and nonstop='S'

select *
from route_detail
