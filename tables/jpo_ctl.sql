drop table if exists "informix".jpo_ctl ;
create table "informix".jpo_ctl 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    record_count integer,
    report_date char(10),
    data_file_name varchar(200),
    generation_utc datetime year to second,
    proc_rec_cnt integer,
    datafile_status char(1),
    ctl_note varchar(250),
    report_dt datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

