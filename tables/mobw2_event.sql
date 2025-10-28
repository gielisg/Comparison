drop table if exists "informix".mobw2_event ;
create table "informix".mobw2_event 
  (
    event_id varchar(20) not null ,
    event_desc varchar(200,80)
  );

