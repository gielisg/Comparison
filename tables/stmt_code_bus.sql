drop table if exists "informix".stmt_code_bus ;
create table "informix".stmt_code_bus 
  (
    stmt_code char(1) not null ,
    bus_unit_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

