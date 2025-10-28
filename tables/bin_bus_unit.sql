drop table if exists "informix".bin_bus_unit ;
create table "informix".bin_bus_unit 
  (
    binid char(20) not null ,
    bus_unit_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

