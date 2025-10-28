drop table if exists "informix".evnt_sp_cn_chg ;
create table "informix".evnt_sp_cn_chg 
  (
    event_spch_ref serial not null ,
    event_ref integer,
    event_chg_ref integer,
    sp_cn_chg_ref integer
  );

