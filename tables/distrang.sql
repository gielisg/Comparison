drop table if exists "informix".distrang ;
create table "informix".distrang 
  (
    distrangid serial not null ,
    zntprelnid integer,
    distranglow integer,
    distranghigh integer
  );

