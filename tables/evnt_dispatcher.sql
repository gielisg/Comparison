drop table if exists "informix".evnt_dispatcher ;
create table "informix".evnt_dispatcher 
  (
    evntdispid serial not null ,
    srvctypecode char(4) 
        default 'ALL' not null ,
    service_id varchar(32) not null ,
    event_code char(5) not null ,
    event_type char(5) not null ,
    enable char(1) 
        default 'Y' not null ,
    sched_stat_code char(2) 
        default 'O' not null ,
    handler_url varchar(254),
    handler_limit_min integer,
    poll_delay integer,
    max_polls integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enable IN ('Y' ,'N' )) constraint "informix".yes_no
  );

