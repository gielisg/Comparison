drop table if exists "informix".rechrg_type_evnt ;
create table "informix".rechrg_type_evnt 
  (
    rechrg_type_id integer not null ,
    action_type char(1) not null ,
    event_type char(2),
    event_code char(2),
    
    check (action_type IN ('A' ,'T' ,'S' ,'R' ,'U' )) constraint "informix".action_type2
  );

