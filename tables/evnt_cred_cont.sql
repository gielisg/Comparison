drop table if exists "informix".evnt_cred_cont ;
create table "informix".evnt_cred_cont 
  (
    ccrunid integer not null ,
    event_ref integer not null ,
    is_srvc_event char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (is_srvc_event IN ('Y' ,'N' )) constraint "informix".yes_no
  );

