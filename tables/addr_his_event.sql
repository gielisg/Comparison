drop table if exists "informix".addr_his_event ;
create table "informix".addr_his_event 
  (
    hist_id integer not null ,
    event_ref integer not null 
  );

