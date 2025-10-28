drop table if exists "informix".cplus3_cdr ;
create table "informix".cplus3_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    output_row_id integer,
    cdr_id decimal(16),
    account_code varchar(8),
    bill_dt datetime hour to second,
    call_dt datetime hour to second,
    call_datetime datetime hour to second,
    call_type varchar(4),
    call_type_desc varchar(30),
    billing_group varchar(50),
    billed_number varchar(40),
    origin_number varchar(40),
    dest_number varchar(40),
    forwarded_number varchar(40),
    origin_country varchar(50),
    origin_locality varchar(50),
    dest_country varchar(50),
    dest_locality varchar(50),
    rate_per_min decimal(16,4),
    charge decimal(16,4),
    billed_seconds integer,
    call_status varchar(14),
    smartcode varchar(8),
    smartcode_desc varchar(50)
  );

