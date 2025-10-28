drop table if exists "informix".trf_cfg_plans ;
create table "informix".trf_cfg_plans 
  (
    trf_cfg_ref integer not null ,
    plan_code smallint not null ,
    plan_ser_num integer
  );

