drop table if exists "informix".vf_cl_type ;
create table "informix".vf_cl_type 
  (
    vf_tarclasscode char(18) not null ,
    nt_cl_svin char(6) not null ,
    vf_cl_type_narr varchar(128) not null 
  );

