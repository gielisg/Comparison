drop table if exists "informix".solarix_cdr ;
create table "informix".solarix_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    prov_id varchar(20),
    call_date varchar(20),
    caller_id varchar(80),
    call_src varchar(20),
    call_dest varchar(20),
    call_duration integer,
    bill_sec integer
  );

