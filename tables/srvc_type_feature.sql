drop table if exists "informix".srvc_type_feature ;
create table "informix".srvc_type_feature 
  (
    srvctypecode char(4) not null ,
    feature_id integer not null ,
    enabled char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
  );

