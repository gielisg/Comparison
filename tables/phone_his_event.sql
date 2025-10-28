drop table if exists "informix".phone_his_event ;
create table "informix".phone_his_event 
  (
    hist_id integer not null ,
    event_ref integer not null 
  );

