drop table if exists "informix".ntfl_chgdtl_stat ;
create table "informix".ntfl_chgdtl_stat 
  (
    status_id integer not null ,
    status_narr varchar(32) not null 
  );

