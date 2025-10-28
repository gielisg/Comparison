drop table if exists "informix".obj_rel ;
create table "informix".obj_rel 
  (
    par_object_id integer not null ,
    child_object_id integer not null 
  );

