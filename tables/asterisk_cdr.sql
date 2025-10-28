drop table if exists "informix".asterisk_cdr ;
create table "informix".asterisk_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    rec_num integer,
    cl_start_dtm_utc datetime year to second,
    service_id varchar(32),
    terminating_serv varchar(32),
    caller_id varchar(32),
    call_disposition varchar(32),
    call_durn_sec integer,
    bill_units_sec integer,
    call_locality varchar(32),
    user_field varchar(128)
  );

