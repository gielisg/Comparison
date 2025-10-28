drop table if exists "informix".schedule ;
create table "informix".schedule 
  (
    event_ref integer not null ,
    to_login varchar(18) not null ,
    to_dept char(3) not null ,
    sched_code char(3) not null ,
    due_tm datetime year to second,
    created_by varchar(18) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    sched_stat_code char(2),
    stat_tm datetime year to second,
    stat_effect_by varchar(18)
  );

