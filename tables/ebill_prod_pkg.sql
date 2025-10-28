drop table if exists "informix".ebill_prod_pkg ;
create table "informix".ebill_prod_pkg 
  (
    ebill_prod_pkg char(3) not null ,
    ebillprodnarr varchar(128) not null 
  );

