drop table if exists "informix".m2wlbb_cdr ;
create table "informix".m2wlbb_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    file_date date,
    session_id varchar(60,20),
    username varchar(64),
    start_time datetime year to second,
    end_time datetime year to second,
    verified_data decimal(20,0)
  );

