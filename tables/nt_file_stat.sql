drop table if exists "informix".nt_file_stat ;
create table "informix".nt_file_stat 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

