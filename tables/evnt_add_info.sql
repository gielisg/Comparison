drop table if exists "informix".evnt_add_info ;
create table "informix".evnt_add_info 
  (
    event_ref integer not null ,
    evnt_reas_code char(2)
  );

