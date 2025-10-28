drop table if exists "informix".webill_evnt ;
create table "informix".webill_evnt 
  (
    webill_ref integer not null ,
    event_ref integer not null 
  );

