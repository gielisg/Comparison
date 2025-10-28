drop table if exists "informix".attrib_set ;
create table "informix".attrib_set 
  (
    attrib_set_id serial not null ,
    attrib_set_name varchar(64) not null ,
    note lvarchar(1024),
    display_order smallint 
        default 1 not null ,
    enabled_flag char(1) 
        default 'Y',
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled_flag IN ('Y' ,'N' )) constraint "informix".yes_no
  );

