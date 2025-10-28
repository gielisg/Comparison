drop table if exists "informix".cplus_tolfre ;
create table "informix".cplus_tolfre 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    output_row_id varchar(10),
    unique_id decimal(16,4),
    acc_code varchar(20),
    bill_dt datetime year to second,
    billing_grp varchar(64),
    tollfree_num varchar(64),
    origin_num varchar(64),
    a_locality varchar(64),
    status_chk varchar(64),
    term_no varchar(64),
    call_dt datetime year to day,
    call_time interval hour(5) to second,
    call_datetime datetime year to second,
    duration_secs varchar(64),
    charge decimal(16,4),
    call_type varchar(64),
    call_subtype varchar(64),
    pay_phone varchar(64)
  );

