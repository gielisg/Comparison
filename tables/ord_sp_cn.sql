drop table if exists "informix".ord_sp_cn ;
create table "informix".ord_sp_cn 
  (
    sp_cn_ref integer not null ,
    ord_ph_dref integer not null 
  );

