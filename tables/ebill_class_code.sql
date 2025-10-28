drop table if exists "informix".ebill_class_code ;
create table "informix".ebill_class_code 
  (
    class_code char(2) not null ,
    class_code_narr varchar(128) not null 
  );

