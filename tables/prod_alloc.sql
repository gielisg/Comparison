drop table if exists "informix".prod_alloc ;
create table "informix".prod_alloc 
  (
    prod_code char(20) not null ,
    qty_alloc smallint not null 
  );

