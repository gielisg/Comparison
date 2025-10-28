drop table if exists "informix".cont_bus_unit ;
create table "informix".cont_bus_unit 
  (
    cont_bus_ref serial not null ,
    contact_code char(10) not null ,
    bus_unit_code char(2) not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

