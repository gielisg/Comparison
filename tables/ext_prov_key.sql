drop table if exists "informix".ext_prov_key ;
create table "informix".ext_prov_key 
  (
    key_id serial not null ,
    key_narr varchar(32,10) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

