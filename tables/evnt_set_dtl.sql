drop table if exists "informix".evnt_set_dtl ;
create table "informix".evnt_set_dtl 
  (
    set_dtl_ref serial not null ,
    set_ref integer not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    term_on_fail char(1) 
        default 'Y',
    exception_set integer,
    sched_to_dept char(3),
    sched_to_login varchar(18,1),
    latency_min integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (term_on_fail IN ('Y' ,'N' )) constraint "informix".yes_no
  );

