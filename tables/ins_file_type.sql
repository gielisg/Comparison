drop table if exists "informix".ins_file_type ;
create table "informix".ins_file_type 
  (
    file_type_id serial not null ,
    file_type_narr varchar(32)
  );

