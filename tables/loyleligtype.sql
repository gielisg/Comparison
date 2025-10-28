drop table if exists "informix".loyleligtype ;
create table "informix".loyleligtype 
  (
    loyleligtypecode char(4) not null ,
    loyleligtypenarr varchar(64) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

