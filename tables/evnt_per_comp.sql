drop table if exists "informix".evnt_per_comp ;
create table "informix".evnt_per_comp 
  (
    evnt_per_comp_id serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    bill_period integer not null ,
    cycle_code char(2) 
        default 'CM' not null ,
    process integer 
        default 0 not null ,
    processes integer 
        default 0 not null ,
    started datetime year to second,
    proc_status char(1) not null ,
    count integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (proc_status IN ('A' ,'C' ,'R' ,'W' )) constraint "informix".process_status24
  );

