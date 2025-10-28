drop table if exists "informix".pkg_limit ;
create table "informix".pkg_limit 
  (
    pkg_limit_ref serial not null ,
    pkg_code integer not null ,
    option smallint,
    daily_limit decimal(12,2) not null ,
    cum_limit decimal(12,2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

