drop table if exists "informix".miracomdat ;
create table "informix".miracomdat 
  (
    nt_file_num integer not null ,
    nt_file_rec_num integer not null ,
    fnn char(10),
    bytes_up decimal(15,0) 
        default 0 not null ,
    bytes_dn decimal(15,0) 
        default 0 not null 
  );

