drop table if exists "informix".spend_alert_evnt ;
create table "informix".spend_alert_evnt 
  (
    spend_alert_ref integer not null ,
    event_ref integer not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

