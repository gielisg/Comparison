drop table if exists "informix".primus_lolm_conf ;
create table "informix".primus_lolm_conf 
  (
    code char(10) not null ,
    sub_code char(1) not null ,
    narr varchar(100,1) not null ,
    event_type char(2),
    event_code char(2),
    sched_stat_code char(1),
    last_rep_dt datetime year to second
  );

