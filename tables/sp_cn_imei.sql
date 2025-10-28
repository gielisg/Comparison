drop table if exists "informix".sp_cn_imei ;
create table "informix".sp_cn_imei 
  (
    sp_cn_ref integer not null ,
    imei_ser_num integer not null 
  );

