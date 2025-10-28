drop table if exists "informix".ins_source ;
create table "informix".ins_source 
  (
    ins_source_id serial not null ,
    ins_source_narr varchar(32)
  );

