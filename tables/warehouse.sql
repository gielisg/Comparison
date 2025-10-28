drop table if exists "informix".warehouse ;
create table "informix".warehouse 
  (
    warehouse_code char(2) not null ,
    warehouse_narr char(32) not null 
  );

