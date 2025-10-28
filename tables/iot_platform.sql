drop table if exists "informix".iot_platform ;
create table "informix".iot_platform 
  (
    platform_id serial not null ,
    platform_prov smallint not null ,
    platform_name varchar(254,32) not null ,
    enabled char(1) 
        default 'Y' not null ,
    devsync_publish char(1) 
        default 'Y' not null ,
    devsync_subscr char(1) 
        default 'Y' not null ,
    message_publish char(1) 
        default 'Y' not null ,
    message_subscr char(1) 
        default 'Y' not null ,
    auth_info lvarchar(10000),
    note lvarchar(10000),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check ((platform_prov >= 0 ) AND (platform_prov <= 100 ) ) constraint "informix".gte_0_lte_100_32,
    
    check (enabled IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (devsync_publish IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (devsync_subscr IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (message_publish IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (message_subscr IN ('Y' ,'N' )) constraint "informix".yes_no
  );

