drop table if exists "informix".device_attr_set ;
create table "informix".device_attr_set 
  (
    set_id serial not null ,
    name varchar(254) not null ,
    note lvarchar(10000),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

