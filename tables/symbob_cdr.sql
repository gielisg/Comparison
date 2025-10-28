drop table if exists "informix".symbob_cdr ;
create table "informix".symbob_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_identifier varchar(20),
    service_number varchar(20),
    calling_number varchar(20),
    called_number varchar(20),
    completion_code_id char(1),
    connect_dtm varchar(20),
    disconnect_dtm varchar(20),
    duration_seconds varchar(10),
    amount varchar(10),
    call_type_id varchar(5),
    destination_cat varchar(20),
    destination_name varchar(255)
  );

