drop table if exists "informix".nt_pass_sched ;
create table "informix".nt_pass_sched 
  (
    event_ref integer not null ,
    nt_cn_ref integer,
    phone_num varchar(64),
    nt_connected datetime year to second,
    passwd_scheduled varchar(32)
  );

