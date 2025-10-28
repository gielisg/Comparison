drop table if exists "informix".oppstn_cl_type ;
create table "informix".oppstn_cl_type 
  (
    type_id_usg integer not null ,
    type_id_narr varchar(128) not null 
  );

