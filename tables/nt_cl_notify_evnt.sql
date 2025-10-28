drop table if exists "informix".nt_cl_notify_evnt ;
create table "informix".nt_cl_notify_evnt 
  (
    ser integer not null ,
    event_ref integer not null ,
    quantity decimal(25,10),
    allowance decimal(25,10),
    percentage decimal(5,2)
  );

