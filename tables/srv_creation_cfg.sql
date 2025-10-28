drop table if exists "informix".srv_creation_cfg ;
create table "informix".srv_creation_cfg 
  (
    file_type_code char(10) not null ,
    key_value varchar(80) not null ,
    debtor_code char(10) not null ,
    srvctypecode char(4) not null ,
    pkg_code integer not null ,
    option smallint not null ,
    plan_code smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

