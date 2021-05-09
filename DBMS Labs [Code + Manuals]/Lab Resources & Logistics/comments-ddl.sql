drop table comments;
CREATE TABLE comments (
  id integer  NOT NULL ,
  from_user_id integer,
  to_user_id integer,
  item_id integer,
  rating integer,
  dt varchar(25),
  comm varchar(100),
  PRIMARY KEY  (id)
);
