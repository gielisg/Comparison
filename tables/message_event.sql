drop table if exists "informix".message_event ;
create table "informix".message_event 
  (
    event_ref integer not null ,
    msgid integer not null 
  );

