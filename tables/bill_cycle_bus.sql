drop table if exists "informix".bill_cycle_bus ;
create table "informix".bill_cycle_bus 
  (
    cycle_code char(2) not null ,
    bus_unit_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

