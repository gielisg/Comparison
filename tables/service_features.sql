drop table if exists "informix".service_features ;
create table "informix".service_features 
  (
    feature_id serial not null ,
    name varchar(254) not null ,
    enabled char(1) 
        default 'Y' not null ,
    note lvarchar(1000),
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

