drop table if exists "informix".evnt_ord ;
create table "informix".evnt_ord 
  (
    ordrid integer not null ,
    event_ref integer not null 
  );

