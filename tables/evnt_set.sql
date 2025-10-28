drop table if exists "informix".evnt_set ;
create table "informix".evnt_set 
  (
    set_ref serial not null ,
    set_narr varchar(128) not null ,
    ctrltrigevnt char(1) 
        default 'N' not null ,
    note lvarchar(2000),
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
    
    check (ctrltrigevnt IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (active IN ('Y' ,'N' )) constraint "informix".yes_no
  );

