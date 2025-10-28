drop table if exists "informix".wildjar_cdr ;
create table "informix".wildjar_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    id varchar(12),
    uuid varchar(64),
    account varchar(10),
    timestamp varchar(12),
    date_start_gmt varchar(20),
    date_stop_gmt varchar(20),
    date_start_local varchar(20),
    date_stop_local varchar(20),
    local_timezone varchar(100),
    caller varchar(20),
    tracking_number varchar(20),
    target varchar(20),
    status varchar(20),
    duration varchar(12),
    talk_time varchar(12),
    first_time_caller varchar(5),
    country varchar(5),
    network varchar(20),
    area varchar(64),
    state char(3),
    location varchar(20)
  );

