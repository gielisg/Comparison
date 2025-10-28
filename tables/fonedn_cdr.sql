drop table if exists "informix".fonedn_cdr ;
create table "informix".fonedn_cdr 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    date_start varchar(20),
    date_end varchar(20),
    duration varchar(20),
    service_number varchar(100),
    aparty varchar(20),
    bparty varchar(20),
    rate varchar(20),
    cost varchar(20),
    description varchar(100)
  );

