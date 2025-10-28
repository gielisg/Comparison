drop table if exists "informix".prod_relation ;
create table "informix".prod_relation 
  (
    prod_code char(20) not null ,
    prod_parent char(20) not null 
  );

