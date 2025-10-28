drop table if exists "informix".iot_plat_devices ;
create table "informix".iot_plat_devices 
  (
    device_id integer not null ,
    platform_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    devsync_publish char(1) 
        default 'Y' not null ,
    devsync_subscr char(1) 
        default 'Y' not null ,
    message_publish char(1) 
        default 'Y' not null ,
    message_subscr char(1) 
        default 'Y' not null ,
    note lvarchar(10000),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (devsync_publish IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (devsync_subscr IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (message_publish IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (message_subscr IN ('Y' ,'N' )) constraint "informix".yes_no
  );

