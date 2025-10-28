drop table if exists "informix".attrset_srvctype ;
create table "informix".attrset_srvctype 
  (
    attrib_set_id integer not null ,
    srvctypecode char(4) not null ,
    note lvarchar(1024),
    enabled_flag char(1) 
        default 'Y' not null ,
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

