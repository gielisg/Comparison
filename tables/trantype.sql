drop table if exists "informix".trantype ;
create table "informix".trantype 
  (
    trantypecd char(1) not null ,
    trantypenarr varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

