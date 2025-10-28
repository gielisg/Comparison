drop table if exists "informix".fin_file ;
create table "informix".fin_file 
  (
    file_ref serial not null ,
    file_type char(1) not null ,
    file_name varchar(80) not null ,
    file_narr varchar(80),
    file_amnt decimal(10,2),
    file_cnt integer,
    file_stat char(1),
    proc_start_dt datetime year to second not null ,
    proc_end_dt datetime year to second
  );

