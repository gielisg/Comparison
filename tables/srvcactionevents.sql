drop table if exists "informix".srvcactionevents ;
create table "informix".srvcactionevents 
  (
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    actionid integer not null ,
    event_type char(2) not null ,
    event_code char(2) not null ,
    opp_event_code char(2),
    opp_event_type char(2),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

