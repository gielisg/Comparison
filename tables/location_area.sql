drop table if exists "informix".location_area ;
create table "informix".location_area 
  (
    lac_code varchar(10,4) not null ,
    country_code varchar(10,3) not null ,
    country varchar(30,6)
  );

