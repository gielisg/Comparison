drop table if exists "informix".ntflchdt_evnt ;
create table "informix".ntflchdt_evnt 
  (
    nt_fl_dtl_ref integer not null ,
    event_ref integer not null 
  );

