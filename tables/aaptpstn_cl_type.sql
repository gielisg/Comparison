drop table if exists "informix".aaptpstn_cl_type ;
create table "informix".aaptpstn_cl_type 
  (
    calltype integer not null ,
    calltype_narr varchar(128) not null 
  );

