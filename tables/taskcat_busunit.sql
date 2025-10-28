drop table if exists "informix".taskcat_busunit ;
create table "informix".taskcat_busunit 
  (
    cat_id integer not null ,
    bus_unit_code char(2) not null ,
    active char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

