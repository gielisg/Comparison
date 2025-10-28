drop table if exists "informix".sp_cn_vas_req ;
create table "informix".sp_cn_vas_req 
  (
    sp_cn_vas_ref integer not null ,
    request_id char(20) not null 
  );

