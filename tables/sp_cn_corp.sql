drop table if exists "informix".sp_cn_corp ;
create table "informix".sp_cn_corp 
  (
    sp_plan_ref integer not null ,
    corp_code char(10) not null 
  );

