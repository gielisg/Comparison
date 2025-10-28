drop table if exists "informix".ntfl_asgn_chg ;
create table "informix".ntfl_asgn_chg 
  (
    nt_fl_dtl_ref integer not null ,
    sp_cn_chg_ref integer not null 
  );

