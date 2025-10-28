drop table if exists "informix".devices ;
create table "informix".devices 
  (
    device_id serial not null ,
    sp_id varchar(254,20),
    sp_id2 varchar(254),
    status_id integer not null ,
    bus_unit_code char(2) not null ,
    type_id integer not null ,
    condition_id integer not null ,
    polling_schm_id integer,
    framing_schm_id integer,
    note lvarchar(10000),
    password varchar(254),
    virtual char(1) 
        default 'N' not null ,
    cons_bill_data char(1) 
        default 'N' not null ,
    cons_anal_data char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (virtual IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cons_bill_data IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cons_anal_data IN ('Y' ,'N' )) constraint "informix".yes_no
  );

