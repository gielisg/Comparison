drop table if exists "informix".sched_stat_code ;
create table "informix".sched_stat_code 
  (
    sched_stat_code char(2) not null ,
    sched_stat_narr char(32)
  );

