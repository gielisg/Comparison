drop table if exists "informix".evnt_trigger ;
create table "informix".evnt_trigger 
  (
    event_type char(2),
    event_code char(2),
    srvctypecode char(4) 
        default 'ALL' not null ,
    trigger_on_stat char(2),
    trigger_type char(2) not null ,
    trigger_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

