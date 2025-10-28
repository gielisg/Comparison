drop table if exists "informix".evnt_st_notf_cf ;
create table "informix".evnt_st_notf_cf 
  (
    evntstnotfcfref serial not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    event_code_ref integer not null ,
    notf_addr_id integer not null ,
    sched_stat_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

