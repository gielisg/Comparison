drop table if exists "informix".bus_datasrce ;
create table "informix".bus_datasrce 
  (
    bus_unit_code char(2) not null ,
    datasrcecode char(4) not null 
  );

