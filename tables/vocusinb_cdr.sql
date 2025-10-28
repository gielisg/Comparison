drop table if exists "informix".vocusinb_cdr ;
create table "informix".vocusinb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type char(3),
    extract_id varchar(10),
    service_number varchar(20),
    client_number varchar(10),
    seq_no varchar(10),
    julian_date varchar(6),
    trans_code varchar(10),
    call_date char(8),
    call_time char(8),
    duration integer,
    bparty_called_num varchar(20),
    dailed_number varchar(20),
    orig_desc varchar(50),
    dest_desc varchar(50),
    tariff_code varchar(5),
    rate_type char(1),
    call_amount varchar(10)
  );

