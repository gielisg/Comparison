drop table if exists "informix".evnt_handler_log ;
create table "informix".evnt_handler_log 
  (
    id serial not null ,
    event_ref integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

