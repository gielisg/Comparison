drop table if exists "informix".nextepdat_cdr ;
create table "informix".nextepdat_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_dt datetime year to second,
    account_no varchar(20),
    ip_address varchar(50),
    volume_bytes decimal(20,0),
    project_name varchar(128),
    service_num varchar(20)
  );

