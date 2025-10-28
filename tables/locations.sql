drop table if exists "informix".locations ;
create table "informix".locations 
  (
    location_code char(2) not null ,
    id integer not null ,
    stk_whse_code char(3),
    location_narr varchar(32)
  );

