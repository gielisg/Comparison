drop table if exists "informix".device_type_img ;
create table "informix".device_type_img 
  (
    dvctype_img_id serial not null ,
    type_id integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

