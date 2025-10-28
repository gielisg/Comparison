drop table if exists "informix".evnt_attach ;
create table "informix".evnt_attach 
  (
    attach_id serial not null ,
    event_ref integer not null ,
    attach_loc varchar(254),
    unattach_evt_ref integer,
    cust_delete char(1) 
        default 'N' not null ,
    cust_view char(1) 
        default 'Y' not null ,
    user_delete char(1) 
        default 'N' not null ,
    file_name varchar(254),
    note text,
    attach_file "informix".blob,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (cust_delete IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (cust_view IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (user_delete IN ('Y' ,'N' )) constraint "informix".yes_no
  );

