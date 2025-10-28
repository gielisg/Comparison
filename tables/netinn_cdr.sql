drop table if exists "informix".netinn_cdr ;
create table "informix".netinn_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type varchar(10),
    id varchar(20),
    call_date varchar(20),
    call_time varchar(20),
    msisdn varchar(20),
    imei varchar(20),
    imsi varchar(20),
    event varchar(20),
    call_desc varchar(200),
    origin varchar(20),
    destination varchar(20),
    qty_used varchar(20),
    qty_charged varchar(20),
    unit_type varchar(20),
    isp_price varchar(20),
    list_price varchar(20),
    pkg_id varchar(80),
    i_rate_plan varchar(20),
    i_platform varchar(20)
  );

