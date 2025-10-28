drop table if exists "informix".evnt_sp_cn ;
create table "informix".evnt_sp_cn 
  (
    event_ref integer not null ,
    sp_cn_ref integer not null 
  );

