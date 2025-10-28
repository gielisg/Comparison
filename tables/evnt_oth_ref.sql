drop table if exists "informix".evnt_oth_ref ;
create table "informix".evnt_oth_ref 
  (
    event_ref integer not null ,
    evnt_oth_ref varchar(254) not null 
  );

