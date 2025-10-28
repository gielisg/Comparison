drop table if exists "informix".gssmsc_cl_type ;
create table "informix".gssmsc_cl_type 
  (
    nt_call_type smallint not null ,
    nt_call_typenarr varchar(128) not null 
  );

