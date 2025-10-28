drop table if exists "informix".ntfl_chgdtl_reln ;
create table "informix".ntfl_chgdtl_reln 
  (
    prnt_dtl_ref integer not null ,
    chld_dtl_ref integer not null 
  );

