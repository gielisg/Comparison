drop table if exists "informix".sim_sched ;
create table "informix".sim_sched 
  (
    sim_id integer not null ,
    nt_cn_ref integer not null ,
    sim_link_start datetime year to second not null ,
    event_ref integer not null ,
    phone_num varchar(64) not null ,
    nt_connected datetime year to second not null ,
    puk char(8)
  );

