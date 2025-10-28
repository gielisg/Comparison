drop table if exists "informix".nt_cn_ref ;
create table "informix".nt_cn_ref 
  (
    nt_cn_ref integer not null ,
    phone_num varchar(64) not null ,
    nt_connected datetime year to second not null 
  );

