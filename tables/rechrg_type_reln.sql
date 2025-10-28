drop table if exists "informix".rechrg_type_reln ;
create table "informix".rechrg_type_reln 
  (
    id serial not null ,
    type_id integer not null ,
    parent_type_id integer not null 
  );

