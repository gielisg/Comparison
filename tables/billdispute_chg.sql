drop table if exists "informix".billdispute_chg ;
create table "informix".billdispute_chg 
  (
    dispute_ref integer not null ,
    sp_chg_dtl_ref integer not null 
  );

