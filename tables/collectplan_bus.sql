drop table if exists "informix".collectplan_bus ;
create table "informix".collectplan_bus 
  (
    plan_code char(5) not null ,
    bus_unit_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

