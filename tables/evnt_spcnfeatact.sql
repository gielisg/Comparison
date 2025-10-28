drop table if exists "informix".evnt_spcnfeatact ;
create table "informix".evnt_spcnfeatact 
  (
    id integer not null ,
    event_ref integer not null 
  );

