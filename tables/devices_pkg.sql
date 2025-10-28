drop table if exists "informix".devices_pkg ;
create table "informix".devices_pkg 
  (
    dev_pkg_id serial not null ,
    device_id integer not null ,
    pkg_code integer not null ,
    option smallint not null ,
    wef_dt datetime year to second 
        default current year to second not null ,
    wef_to datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

