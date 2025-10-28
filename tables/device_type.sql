drop table if exists "informix".device_type ;
create table "informix".device_type 
  (
    type_id serial not null ,
    name varchar(254,20) not null ,
    bus_unit_code char(2) not null ,
    cat_id integer not null ,
    model_id integer not null ,
    attribute_set integer,
    polling_schm_id integer,
    framing_schm_id integer,
    note lvarchar(10000),
    autonum_device char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (autonum_device IN ('Y' ,'N' )) constraint "informix".yes_no
  );

