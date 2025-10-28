drop table if exists "informix".audioco_cdr ;
create table "informix".audioco_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    call_date varchar(20) not null ,
    leg_start_time varchar(20) not null ,
    aparty varchar(20) not null ,
    bparty varchar(20),
    call_type_desc varchar(200),
    seconds_duration decimal(10,2),
    charge varchar(10),
    cateroy varchar(20)
  );

