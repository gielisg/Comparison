drop table if exists "informix".non_csh_dsc_types ;
create table "informix".non_csh_dsc_types 
  (
    dsc_type_id char(2) not null ,
    dsc_type_narr varchar(32) not null 
  );

