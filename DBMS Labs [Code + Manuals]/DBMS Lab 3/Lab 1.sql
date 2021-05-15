Code 1:category_header :  cat_code number(5), cat_desc varchar(20), cat_code will be primary key
create table category_header
(
cat_code number(5) primary key,
cat_desc varchar2(20)
)
desc category_header

Code 2:route_header: route_id number(5), route_no number(5), cat_code number(5), origin varchar(20), destination varchar(20), fare number(7,2), distance number(3), capacity number(3) , cat_code will be foreign key, route_id will be primary key

create table route_header
(
route_id number(5) primary key, 
route_no number(5), 
cat_code number(5), 
origin varchar2(20), 
destination varchar2(20), 
fare number(7,2), 
distance number(3), 
capacity number(3),
foreign key (cat_code) references category_header(cat_code) 
)

desc route_header
Code 3:place_header: place_id number(5), place_name varchar(20), place_address varchar(50), bus_station varchar(10), place_id will be primary key, place_name not null
create table place_header
(
place_id number(5) primary key, 
place_name varchar2(20) not null, 
place_address varchar2(50), 
bus_station varchar2(10)
)
desc place_header
Code 4:fleet_header: fleet_id number(5), day date, route_id number(5), cat_code number(5), fleet_id primary key, route_id foreign key, cat_code foreign key
create table fleet_header
(
fleet_id number(5) primary key, 
day date, 
route_id number(5), 
cat_code number(5),
foreign key (route_id) references route_header(route_id), 
foreign key (cat_code) references category_header(cat_code) 
)

desc fleet_header
Code 5: ticket_header: fleet_id number(5), ticket_no number(5), doi date, dot date, time_travel char(8), board_place varchar(20), origin varchar(40), destination varchar(40), adult number(3), children number(3), total_fare number(7,2), route_id number(5)
fleet_id foreign key, ticket_no primary key, doi- not null, dot-not null, route_id – foreign key
create table ticket_header
(
fleet_id number(5), 
ticket_no number(5) primary key, 
doi date not null, 
dot date not null, 
time_travel char(8), 
board_place varchar(20), 
origin varchar(40), 
destination varchar(40), 
adult number(3), 
children number(3), 
total_fare number(7,2), 
route_id number(5),
foreign key (fleet_id) references fleet_header(fleet_id),
foreign key (route_id) references route_header(route_id)
)

desc ticket_header
Code 6: ticket_detail: ticket_no number(5), name varchar(20), sex char(1), age number(3), fare number(5,2)
create table ticket_detail
(
ticket_no number(5), 
name varchar(20), 
sex char(1), 
age number(3), 
fare number(5,2)
)

desc ticket_detail
Code 7: route_detail: route_id number(5), place_id number(5), nonstop char(1)
create table route_detail
(
route_id number(5), 
place_id number(5), 
nonstop char(1)
)

desc route_detail
