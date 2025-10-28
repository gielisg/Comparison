drop table if exists "informix".bus_step_type ;
create table "informix".bus_step_type 
  (
    bus_unit_code char(2) not null ,
    step_type integer not null ,
    seq_num integer not null 
  );

