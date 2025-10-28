drop table if exists "informix".hypertariffuse ;
create table "informix".hypertariffuse 
  (
    sessionid integer not null ,
    session_started datetime year to second not null ,
    session_ended datetime year to second not null ,
    session_count integer 
        default 1 not null ,
    source varchar(32) 
        default 'Unknown' not null ,
    termination_meth varchar(32),
    hypertar_msg varchar(255),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

