drop table if exists "informix".evnt_billdispute ;
create table "informix".evnt_billdispute 
  (
    dispute_ref integer not null ,
    event_ref integer not null 
  );

