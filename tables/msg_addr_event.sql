drop table if exists "informix".msg_addr_event ;
create table "informix".msg_addr_event 
  (
    event_ref integer not null ,
    msg_addr_id integer not null 
  );

