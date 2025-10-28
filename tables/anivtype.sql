drop table if exists "informix".anivtype ;
create table "informix".anivtype 
  (
    anivtypecode char(2) not null ,
    anivtypenarr varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

