drop table if exists "informix".evnt_code_srvctp ;
create table "informix".evnt_code_srvctp 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    srvctypecode char(4) not null ,
    exclude char(1) 
        default 'N' not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (exclude IN ('Y' ,'N' )) constraint "informix".yes_no
  );

