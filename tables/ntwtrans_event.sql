drop table if exists "informix".ntwtrans_event ;
create table "informix".ntwtrans_event 
  (
    ntwtransid integer not null ,
    event_ref integer not null 
  );

