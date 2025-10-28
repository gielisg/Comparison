drop table if exists "informix".stock ;
create table "informix".stock 
  (
    prod_code char(20) not null ,
    num_in_stock integer not null 
  );

