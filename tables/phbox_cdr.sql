drop table if exists "informix".phbox_cdr ;
create table "informix".phbox_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(3),
    extract_id varchar(20),
    service_num varchar(60),
    client_num varchar(60),
    seq_no integer,
    julian_date integer,
    trans_code varchar(100),
    call_date varchar(20),
    call_time varchar(20),
    call_duration integer,
    bparty varchar(60),
    dialed_num varchar(60),
    orig_desc varchar(100),
    dest_desc varchar(100),
    tariff_code varchar(200),
    rate_type char(10),
    call_amount decimal(13,3)
  );

