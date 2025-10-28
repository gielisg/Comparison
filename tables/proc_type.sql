drop table if exists "informix".proc_type ;
create table "informix".proc_type 
  (
    proc_type_code char(3) not null ,
    proc_type_narr char(32) not null 
  );

