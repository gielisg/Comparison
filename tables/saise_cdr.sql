drop table if exists "informix".saise_cdr ;
create table "informix".saise_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    source_id char(2),
    chgparty varchar(64),
    usage_mbs char(20),
    usg_start_dt datetime year to second,
    usg_end_dt datetime year to second,
    usg_time datetime hour to minute
  );

