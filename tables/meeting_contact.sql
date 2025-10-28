drop table if exists "informix".meeting_contact ;
create table "informix".meeting_contact 
  (
    meeting_id integer not null ,
    contact_code char(10) not null 
  );

