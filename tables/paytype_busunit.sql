drop table if exists "informix".paytype_busunit ;
create table "informix".paytype_busunit 
  (
    pay_code char(2) not null ,
    bus_unit_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

