drop table if exists "informix".bus_unit_pay_src ;
create table "informix".bus_unit_pay_src 
  (
    bus_unit_code char(2) not null ,
    pay_source_id integer not null ,
    pay_provider integer,
    priority smallint 
        default 1 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (priority > 0 ) constraint "informix".greater_than_038
  );

