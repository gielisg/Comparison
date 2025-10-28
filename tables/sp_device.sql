drop table if exists "informix".sp_device ;
create table "informix".sp_device 
  (
    sp_cn_ref integer not null ,
    deviceid integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

