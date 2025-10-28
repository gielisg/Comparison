drop table if exists "informix".meeting_status ;
create table "informix".meeting_status 
  (
    status_id serial not null ,
    status_narr char(32) not null ,
    active char(1) 
        default 'Y' not null ,
    sys_status char(1) not null ,
    disp_ord smallint 
        default 0 not null ,
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

