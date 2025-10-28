drop table if exists "informix".cba_config ;
create table "informix".cba_config 
  (
    bus_unit_code char(2) not null ,
    cba_caic char(15) not null 
  );

