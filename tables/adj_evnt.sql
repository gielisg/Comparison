drop table if exists "informix".adj_evnt ;
create table "informix".adj_evnt 
  (
    adj_ref integer not null ,
    event_ref integer not null 
  );

