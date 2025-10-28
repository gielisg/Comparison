drop table if exists "informix".meetingitem_cont ;
create table "informix".meetingitem_cont 
  (
    meeting_item_id integer not null ,
    contact_code char(10) not null 
  );

