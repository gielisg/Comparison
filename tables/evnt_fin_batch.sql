drop table if exists "informix".evnt_fin_batch ;
create table "informix".evnt_fin_batch 
  (
    event_ref integer not null ,
    type char(1) not null ,
    batch_id char(10) not null ,
    
    check (type IN ('I' ,'P' )) constraint "informix".batch_type17,
    
    check (type IN ('I' ,'P' )) constraint "informix".batch_type25
  );

