drop table if exists "informix".dvc_polling_schm ;
create table "informix".dvc_polling_schm 
  (
    polling_schm_id serial not null ,
    name varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

