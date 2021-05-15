B.1.1 : Execution of each SQL query used to complete the task given in PART A :
1.	Write a query to display all bus_station name into upper case.

select upper (bus_station) bus_station from place_header 

2.	Write a query to print “mpstme” into upper case.

select upper ('mpstme') from dual

3.	Write a query to display category description of those categories for which cat_code is either 01 or 02 or 04. Display category description with first character in upper case and remaining characters in lower case.

select initcap (cat_desc) from category_header where cat_code=01 or cat_code=02 or cat_code=03

4.	Write a query to concatenate and display place_name and place_address column of place_header table.

select concat (place_name,place_address) from place_header

With Space In Between:

select concat((concat(place_name,' ')),place_address) from place_header

5.	Write a query to display route_id along with substring “MAD” from its destination column.

select route_id, substr(destination, 1, 3) from route_header where destination like '%Mad%' 

6.	Write a query to display category code along with total number of characters for category description.

select length(cat_desc), cat_code from category_header

7.	Write a query to display fare of ticket_detail table with total 15 character space and padding of ‘*’ on left side.
For example : **********14.00

select lpad(fare,15,'*') from ticket_detail

8.	Write a query to display fare of ticket_detail table with total 15 character space and padding of ‘*’ on right side.
For example : 14.00**********

select rpad(fare,15,'*') from ticket_detail

9.	Write a query to round fare from ticke_detail column upto one decimal point.

select round(fare,1) from ticket_detail

10.	Write a query to find system date.

select sysdate from dual

11.	Write a query to display fleet_id, ticket_no, origin, destination and dot column of ticket_header after adding 6 months to it for those records for which number of adults travelling is more than one and number of children travelling is also more than one.


select add_months(dot, 6), fleet_id, ticket_no, origin, destination from ticket_header where Adult>1 and Children>1

12.	Write a query to find next “Tuesday” after sysdate.

select next_day(sysdate,'Tuesday') from dual

13.	Write a query to insert below three records into route_detail table.
Route_id    place_id    Nonstop
105               02
106               01
108               02

insert into route_detail
values(105,02,'')

insert into route_detail
values(106,01,'')

insert into route_detail
values(108,02,'')

14.	Write a query to display ‘N’ for Nonstop column of route_detail column for those records for which nonstop is null.

select nvl(NONSTOP,'N') from route_detail
OR
select nvl(NONSTOP,'N'), route_id, place_id from route_detail where nonstop is null
