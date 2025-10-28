drop table if exists "informix".evnt_contact ;
create table "informix".evnt_contact 
  (
    event_ref integer not null ,
    contact_code char(10) not null 
  );

