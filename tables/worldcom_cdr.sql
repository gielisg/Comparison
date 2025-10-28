drop table if exists "informix".worldcom_cdr ;
create table "informix".worldcom_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    originating_num varchar(20,10),
    cl_start_dt datetime year to second,
    calldestn varchar(40,1),
    terminating_num varchar(20,10),
    duration interval hour to fraction(1),
    cost decimal(12,2)
  );

