drop table if exists "informix".srvcaction_reas ;
create table "informix".srvcaction_reas 
  (
    actionid integer not null ,
    evnt_reas_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

