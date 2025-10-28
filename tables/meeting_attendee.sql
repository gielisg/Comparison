drop table if exists "informix".meeting_attendee ;
create table "informix".meeting_attendee 
  (
    meeting_id integer not null ,
    contact_code char(10) not null ,
    apologises char(1) 
        default 'N' not null ,
    
    check (apologises IN ('Y' ,'N' )) constraint "informix".yes_no
  );

