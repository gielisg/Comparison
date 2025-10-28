drop table if exists "informix".imei_in_group ;
create table "informix".imei_in_group 
  (
    imei_ser_num integer not null ,
    sp_cn_ref integer not null ,
    debtor_code char(10) not null ,
    group_num smallint not null ,
    sp_cn_user char(10) not null ,
    start_date date not null ,
    end_date date
  );

