drop table if exists "informix".location_types ;
create table "informix".location_types 
  (
    id serial not null ,
    type_narr varchar(32) not null 
  );

