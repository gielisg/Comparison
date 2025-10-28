drop table if exists "informix".config_service ;
create table "informix".config_service 
  (
    id varchar(254) not null ,
    sp_cn_ref integer not null ,
    version integer 
        default 1 not null ,
    key varchar(20) not null ,
    json lvarchar(32000) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

