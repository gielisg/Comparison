drop table if exists "informix".rechrg_elm_evtcd ;
create table "informix".rechrg_elm_evtcd 
  (
    element_id integer not null ,
    action_id integer not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (action_id IN (1 ,2 ,3 ,4 )) constraint "informix".c1_2_3_443
  );

