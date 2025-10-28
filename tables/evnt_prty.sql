drop table if exists "informix".evnt_prty ;
create table "informix".evnt_prty 
  (
    event_ref integer not null ,
    priority_id integer not null ,
    priority smallint 
        default 100 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

