drop table if exists "informix".attrib_set_dtl ;
create table "informix".attrib_set_dtl 
  (
    attrib_set_id integer not null ,
    attribref integer not null ,
    default_value varchar(128),
    locked char(1) 
        default 'N' not null ,
    note lvarchar(1024),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (locked IN ('Y' ,'N' )) constraint "informix".yes_no
  );

