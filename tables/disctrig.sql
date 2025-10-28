drop table if exists "informix".disctrig ;
create table "informix".disctrig 
  (
    prntdiscid integer not null ,
    pkg_code integer not null ,
    chlddiscid integer not null ,
    enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

