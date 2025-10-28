drop table if exists "informix".excepttype ;
create table "informix".excepttype 
  (
    excepttypecode char(4) not null ,
    excepttypenarr varchar(64) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

