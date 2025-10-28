drop table if exists "informix".rsl_cca ;
create table "informix".rsl_cca 
  (
    range_from varchar(20,1) not null ,
    range_to varchar(20,1) not null ,
    pop varchar(32,10)
  );

