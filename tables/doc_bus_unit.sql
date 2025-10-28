drop table if exists "informix".doc_bus_unit ;
create table "informix".doc_bus_unit 
  (
    doc_id integer not null ,
    bus_unit_code char(2) not null 
  );

