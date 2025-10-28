drop table if exists "informix".cl_dt_imei_used ;
create table "informix".cl_dt_imei_used 
  (
    imei_ser_num integer not null ,
    sp_cn_ref integer not null ,
    cl_ser_num integer not null 
  );

