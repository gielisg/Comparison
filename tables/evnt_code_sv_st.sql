drop table if exists "informix".evnt_code_sv_st ;
create table "informix".evnt_code_sv_st 
  (
    event_type char(2) not null ,
    event_code char(2) not null ,
    sched_stat_code char(2) not null ,
    srvctypecode char(4) 
        default 'ALL' not null ,
    sp_cn_status char(3) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

