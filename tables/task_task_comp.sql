drop table if exists "informix".task_task_comp ;
create table "informix".task_task_comp 
  (
    task_comp_ref serial not null ,
    component_id integer not null ,
    task_id integer not null ,
    note varchar(254),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

