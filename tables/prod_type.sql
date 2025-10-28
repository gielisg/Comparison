drop table if exists "informix".prod_type ;
create table "informix".prod_type 
  (
    prod_type_code char(3) not null ,
    prod_type_narr varchar(32) not null 
  );

