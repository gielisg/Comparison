drop table if exists "informix".evnt_paymentplan ;
create table "informix".evnt_paymentplan 
  (
    plan_ref integer not null ,
    event_ref integer not null 
  );

