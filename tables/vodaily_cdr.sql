drop table if exists "informix".vodaily_cdr ;
create table "informix".vodaily_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(3),
    extract_id varchar(10),
    service_number varchar(20),
    client_number varchar(20),
    seq_no varchar(10),
    julian_date integer,
    trans_code varchar(6),
    call_date varchar(10),
    call_time varchar(10),
    duration integer,
    bparty varchar(20),
    dialed_number varchar(20),
    orig_desc varchar(50),
    dest_desc varchar(50),
    tariff_code char(5),
    rate_type char(1),
    amount decimal(16)
  );

