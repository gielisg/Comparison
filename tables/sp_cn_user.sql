drop table if exists "informix".sp_cn_user ;
create table "informix".sp_cn_user 
  (
    sp_cn_ref integer not null ,
    sp_cn_user char(10) not null 
  );

