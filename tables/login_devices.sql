drop table if exists "informix".login_devices ;
create table "informix".login_devices 
  (
    login_devices_id serial not null ,
    contact_code char(10),
    device_ref varchar(254,10),
    add_information varchar(254),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

