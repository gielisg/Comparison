drop table if exists "informix".techxib_cdr ;
create table "informix".techxib_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_type varchar(20),
    aparty varchar(64,10),
    timestamp varchar(20),
    ut_id varchar(64,10),
    data_in_bytes decimal(18,0),
    data_out_bytes decimal(18,0),
    duration_secs interval second(8) to second,
    ip_address varchar(40)
  );

