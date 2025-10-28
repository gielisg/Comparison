drop table if exists "informix".tel_voice ;
create table "informix".tel_voice 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    user_number varchar(20),
    group_number varchar(20),
    direction varchar(20),
    calling_number varchar(20),
    calling_present_id varchar(20),
    called_number varchar(20),
    start_time varchar(20),
    user_time_zone varchar(20),
    answer_indicator varchar(20),
    answer_time varchar(20),
    release_time varchar(20)
  );

