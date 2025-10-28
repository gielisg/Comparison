drop table if exists "informix".sched_code ;
create table "informix".sched_code 
  (
    sched_code char(3) not null ,
    sched_narr char(18)
  );

