drop table if exists "informix".task_evnts ;
create table "informix".task_evnts 
  (
    task_id integer not null ,
    event_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

