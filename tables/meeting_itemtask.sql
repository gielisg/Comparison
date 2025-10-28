drop table if exists "informix".meeting_itemtask ;
create table "informix".meeting_itemtask 
  (
    meeting_item_id integer not null ,
    task_id integer not null 
  );

