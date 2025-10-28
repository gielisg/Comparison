drop table if exists "informix".business_type ;
create table "informix".business_type 
  (
    bus_type_code char(1) not null ,
    bus_type_narr varchar(32)
  );

