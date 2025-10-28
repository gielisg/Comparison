drop table if exists "informix".nt_fl_process ;
create table "informix".nt_fl_process 
  (
    process_ref serial not null ,
    nt_file_num integer not null ,
    proc_start_dt datetime year to second not null ,
    proc_end_dt datetime year to second
  );

