drop table if exists "informix".wcpstn_cl_type ;
create table "informix".wcpstn_cl_type 
  (
    nt_tar_class_code smallint not null ,
    nt_tar_class_narr varchar(128) not null 
  );

