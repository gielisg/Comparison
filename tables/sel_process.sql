drop table if exists "informix".sel_process ;
create table "informix".sel_process 
  (
    process_ref serial not null ,
    proc_type_code char(3) not null ,
    sel_file_num integer,
    proc_start_dt datetime year to second,
    proc_end_dt datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

