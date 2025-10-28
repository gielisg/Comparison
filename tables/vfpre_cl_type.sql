drop table if exists "informix".vfpre_cl_type ;
create table "informix".vfpre_cl_type 
  (
    vfp_tarclasscode char(25) not null ,
    vfp_cl_type_narr char(128) not null 
  );

