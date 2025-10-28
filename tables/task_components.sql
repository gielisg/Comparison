drop table if exists "informix".task_components ;
create table "informix".task_components 
  (
    component_id serial not null ,
    component_narr varchar(254,20) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

