drop table if exists "informix".event_rel ;
create table "informix".event_rel 
  (
    parent_event integer not null ,
    child_event integer not null ,
    evntrelntypecode char(1) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

