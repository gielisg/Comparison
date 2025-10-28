drop table if exists "informix".srvc_change_cnfg ;
create table "informix".srvc_change_cnfg 
  (
    srvctypecode char(4) not null ,
    network_id char(2) not null ,
    trgtsrvctypecode char(4) not null ,
    ntwkidentifier char(1),
    event_type char(2),
    event_code char(2),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

