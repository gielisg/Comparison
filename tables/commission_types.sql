drop table if exists "informix".commission_types ;
create table "informix".commission_types 
  (
    type_id integer not null ,
    type_narr char(32) not null 
  );

