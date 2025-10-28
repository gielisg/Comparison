drop table if exists "informix".device_attribute ;
create table "informix".device_attribute 
  (
    dev_attr_id serial not null ,
    device_id integer not null ,
    attribid integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    dev_attr_value varchar(254,20),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

