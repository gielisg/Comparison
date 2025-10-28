drop table if exists "informix".ntwsrvctypes ;
create table "informix".ntwsrvctypes 
  (
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    dfltntw char(1) 
        default 'Y' not null ,
    ext_provider_id integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (dfltntw IN ('Y' ,'N' )) constraint "informix".yes_no
  );

