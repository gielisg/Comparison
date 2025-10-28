drop table if exists "informix".telclear_cl_type ;
create table "informix".telclear_cl_type 
  (
    call_type char(6) not null ,
    short_descr varchar(64),
    legend char(10),
    description varchar(128)
  );

