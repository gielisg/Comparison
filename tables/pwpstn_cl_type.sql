drop table if exists "informix".pwpstn_cl_type ;
create table "informix".pwpstn_cl_type 
  (
    usage_type integer not null ,
    call_type_narr varchar(128) not null 
  );

