drop table if exists "informix".net_num_st_hist ;
create table "informix".net_num_st_hist 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    service_number varchar(20) not null ,
    file_seq_number integer not null ,
    record_type char(1),
    line_movement char(1),
    line_mvmnt_time datetime year to second,
    line_type char(1),
    current_operator char(1),
    file_created_tm datetime year to second
  );

