drop table if exists "informix".evnt_reas_code ;
create table "informix".evnt_reas_code 
  (
    evnt_reas_code char(2) not null ,
    evnt_reas_narr char(32),
    display char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (display IN ('N' ,'Y' )) constraint "informix".yes_no
    
    check (display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

