drop table if exists "informix".vocus_cdr ;
create table "informix".vocus_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    batch_id varchar(200),
    sip_call_id varchar(250),
    start_date varchar(20),
    start_time varchar(20),
    start_tstamp varchar(20),
    call_dur varchar(20),
    caller_num varchar(63),
    called_num varchar(63),
    rated_tstamp varchar(50),
    caller_szu varchar(100),
    called_szu varchar(100),
    tariff_name varchar(150),
    rated_charge varchar(20),
    description varchar(130)
  );

