drop table if exists "informix".tldir_cdr ;
create table "informix".tldir_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_date varchar(20) not null ,
    call_time varchar(20) not null ,
    service_number varchar(20) not null ,
    account_number varchar(20),
    number_called varchar(20),
    duration decimal(10,2),
    cost varchar(10),
    call_type varchar(30),
    place_called varchar(60),
    origin_place varchar(60)
  );

