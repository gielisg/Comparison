drop table if exists "informix".iseek_dat ;
create table "informix".iseek_dat 
  (
    nt_file_num integer not null ,
    src_rec_num integer not null ,
    client_id varchar(32),
    adsl_conn_num varchar(64,10),
    service_name varchar(100),
    session_start datetime year to second,
    session_stop datetime year to second,
    mb_up decimal(15,4),
    mb_down decimal(15,4)
  );

