drop table if exists "informix".people_cl_type ;
create table "informix".people_cl_type 
  (
    class_code char(6) not null ,
    group_key char(6),
    class_code_narr varchar(128) not null 
  );

