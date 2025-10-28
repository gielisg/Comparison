drop table if exists "informix".isp_cdr ;
create table "informix".isp_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    uir_id varchar(255) not null ,
    customer_id varchar(255),
    orig_date varchar(20),
    orig_time varchar(20),
    full_num varchar(20) not null ,
    orig_num varchar(20),
    destin_num varchar(20),
    call_desc varchar(80),
    quantity varchar(13),
    unit_mcode_dur varchar(10),
    unit_measure_cd varchar(10),
    dist_range_desc varchar(50),
    call_dur varchar(20),
    ws_call_chg decimal(15,4)
  );

