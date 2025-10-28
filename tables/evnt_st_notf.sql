drop table if exists "informix".evnt_st_notf ;
create table "informix".evnt_st_notf 
  (
    evnt_st_hist_ref serial not null ,
    event_ref integer,
    notf_addr_id integer not null ,
    sched_stat_code char(2),
    sent char(1) 
        default 'N' not null ,
    sent_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (sent IN ('Y' ,'N' )) constraint "informix".yes_no
  );

