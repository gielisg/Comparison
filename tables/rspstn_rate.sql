drop table if exists "informix".rspstn_rate ;
create table "informix".rspstn_rate 
  (
    rate_id integer not null ,
    rate_narr varchar(128) not null 
  );

