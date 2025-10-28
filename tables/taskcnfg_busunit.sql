drop table if exists "informix".taskcnfg_busunit ;
create table "informix".taskcnfg_busunit 
  (
    bus_unit_code char(2) not null ,
    self_care_cat integer not null 
  );

