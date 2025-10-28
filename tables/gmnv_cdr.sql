drop table if exists "informix".gmnv_cdr ;
create table "informix".gmnv_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_type varchar(20),
    call_id varchar(20),
    partner_name varchar(200),
    a_party varchar(63),
    b_party varchar(63),
    utc_start_dt varchar(30),
    utc_end_dt varchar(30),
    call_duration varchar(20),
    charge varchar(20),
    service_code char(2)
  );

