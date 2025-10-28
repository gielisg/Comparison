drop table if exists "informix".sp_pkg_trigger ;
create table "informix".sp_pkg_trigger 
  (
    sp_pkg_trig_ref serial not null ,
    sp_cn_ref integer,
    pkg_trig_dtl_ref integer,
    trigger_dt datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

