drop table if exists "informix".gowireless_cdr ;
create table "informix".gowireless_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    username varchar(20),
    ip varchar(15),
    qos integer,
    uptxoctets decimal(12),
    downrxoctets decimal(12),
    usagesec decimal(10),
    session_time decimal(10),
    usage_direction char(1)
  );

