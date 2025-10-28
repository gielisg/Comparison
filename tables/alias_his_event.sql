drop table if exists "informix".alias_his_event ;
create table "informix".alias_his_event 
  (
    hist_id integer not null ,
    event_ref integer not null 
  );

