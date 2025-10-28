drop table if exists "informix".evnt_devices ;
create table "informix".evnt_devices 
  (
    evnt_dev_id serial not null ,
    device_id integer not null ,
    event_ref integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

