drop table if exists "informix".cplus_cdr ;
create table "informix".cplus_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    unique_id decimal(16,4),
    acc_code varchar(20),
    bill_dt datetime year to second,
    call_dt datetime year to second,
    aparty varchar(64),
    bparty varchar(64),
    call_type varchar(64),
    duration_secs interval second(8) to second,
    charge decimal(16,4),
    b_country varchar(64),
    b_locality varchar(64),
    a_country varchar(64),
    a_locality varchar(64)
  );

