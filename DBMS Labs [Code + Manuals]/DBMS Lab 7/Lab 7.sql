Commands:
1.	Display all routes sorted using distance (descending order).

select * from route_header order by DISTANCE desc

2.	Display details of those routes for which category description is “Delux”.

select * from route_header r inner join category_header c on r.cat_code=c.cat_code where cat_desc='delux'

3.	Find out details of ticket issued to passenger “Charu”.

select * from ticket_detail natural join ticket_header where name='Charu'

4.	Find out places for which routes are non stop.

select * from place_header natural join route_detail where nonstop='N'

5.	Display all rows from route header and only matching rows from route detail.

select * from route_header left outer join route_detail using (route_id)

6.	Find out common route id’s those are present in route_header and route_detail.

select distinct route_id from route_header natural join route_detail

7.	Find out names of passengers who travel through routes with origin as ‘Madurai’ and destination as ‘Madras’.

select distinct name from ticket_header natural join ticket_detail where origin='Madurai' and destination='Madras'

8.	Find out fleets which passes through routes which are not non stop.

select * from route_detail rd inner join fleet_header fh on rd.route_id=fh.route_id where nonstop='S'

9.	Insert into category_header table new row with below details:
Cat code: 05 cat description: fast

insert into category_header
values(05,'fast')
select * from category_header

10.	Display cat_code, cat_description and all route details for all the categories, whether route available for category or not.

select * from category_header ch full outer join route_header rh on ch.cat_code=rh.cat_code

11.	 Find out details of those tickets for which origin of one ticket is same as destination of another ticket.

select t1.origin, t2.destination from ticket_header t1, ticket_header t2 where t1.origin=t2.destination

select * from ticket_header t1,ticket_header t2 where t1.origin=t2.destination
