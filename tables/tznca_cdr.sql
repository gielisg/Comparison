drop table if exists "informix".tznca_cdr ;
create table "informix".tznca_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    aparty varchar(64),
    bparty varchar(64),
    dt_start datetime year to second,
    duration_secs interval second(8) to second,
    serial_num varchar(64),
    billing_mnth varchar(20),
    calltype char(20)
  );

