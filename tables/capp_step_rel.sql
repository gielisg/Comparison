drop table if exists "informix".capp_step_rel ;
create table "informix".capp_step_rel 
  (
    capp_step_id integer not null ,
    oth_step_id integer not null 
  );

