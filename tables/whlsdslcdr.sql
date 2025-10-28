drop table if exists "informix".whlsdslcdr ;
create table "informix".whlsdslcdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    user_id varchar(64,1),
    sess_id varchar(20,1),
    start_dtm datetime year to second,
    end_dtm datetime year to second,
    data_rate decimal(12,4),
    mb_in decimal(12,4),
    mb_out decimal(12,4),
    sess_durn interval day(5) to second,
    num_called varchar(25,1),
    caller_id varchar(25,1),
    ip_address varchar(40,1)
  );

