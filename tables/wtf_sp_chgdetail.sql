drop table if exists "informix".wtf_sp_chgdetail ;
create table "informix".wtf_sp_chgdetail 
  (
    wtf_ref integer not null ,
    sp_chg_dtl_ref integer not null 
  );

