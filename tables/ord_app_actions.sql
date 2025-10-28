drop table if exists "informix".ord_app_actions ;
create table "informix".ord_app_actions 
  (
    action_id integer not null ,
    action_narr char(32) not null ,
    manual char(1) 
        default 'N' not null ,
    
    check (manual IN ('Y' ,'N' )) constraint "informix".yes_no
  );

