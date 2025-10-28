drop table if exists "informix".ibvoip_cdr ;
create table "informix".ibvoip_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    uir_id varchar(255),
    customer_id varchar(255),
    service_num varchar(60),
    calling_num varchar(60),
    called_num varchar(60),
    call_direction varchar(30),
    start_dt varchar(30),
    end_dt varchar(30),
    call_type varchar(80),
    call_desc varchar(100),
    dist_range_desc varchar(100),
    call_duration varchar(30),
    tot_call_chg decimal(13,4)
  );

