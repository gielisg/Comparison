drop table if exists "informix".devices_attr_set ;
create table "informix".devices_attr_set 
  (
    dev_attr_set_id serial not null ,
    device_id integer not null ,
    set_id integer not null ,
    wef_dt datetime year to second 
        default current year to second not null ,
    wef_to datetime year to second,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

