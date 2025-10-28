drop table if exists "informix".sched_dimension ;
create table "informix".sched_dimension 
  (
    event_ref integer not null ,
    nt_cn_ref integer,
    sp_cn_ref integer,
    due_tm datetime year to second not null ,
    sched_stat_code char(2) not null ,
    phone_num varchar(64),
    nt_connected datetime year to second,
    sched_stat_narr varchar(32,4) not null ,
    sp_connected datetime year to second,
    sp_disconnected datetime year to second,
    event_type char(5) not null ,
    event_code char(5) not null ,
    srvctypecode char(4)
  );

