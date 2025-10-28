drop table if exists "informix".rspstn_cl_type ;
create table "informix".rspstn_cl_type 
  (
    calltype integer not null ,
    calltype_narr varchar(128) not null 
  );

