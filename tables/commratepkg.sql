drop table if exists "informix".commratepkg ;
create table "informix".commratepkg 
  (
    commrateid integer not null ,
    pkg_code integer not null ,
    option smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null 
  );

