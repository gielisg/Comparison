drop table if exists "informix".fin_evnt ;
create table "informix".fin_evnt 
  (
    fin_ref integer not null ,
    event_ref integer not null 
  );

