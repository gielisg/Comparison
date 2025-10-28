drop table if exists "informix".svcusage_woff_file ;
create table "informix".svcusage_woff_file 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    phone_num varchar(60) not null ,
    start_dt datetime year to second,
    end_dt datetime year to second
  );

