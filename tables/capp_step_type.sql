drop table if exists "informix".capp_step_type ;
create table "informix".capp_step_type 
  (
    step_type integer not null ,
    step_narr varchar(32) not null ,
    step_dll varchar(128),
    ui_dll varchar(128),
    timeout integer
  );

