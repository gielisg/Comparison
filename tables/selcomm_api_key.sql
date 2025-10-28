drop table if exists "informix".selcomm_api_key ;
create table "informix".selcomm_api_key 
  (
    selapikey_id serial not null ,
    apikeyid integer not null ,
    apikey lvarchar(20000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

