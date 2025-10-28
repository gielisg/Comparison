drop table if exists "informix".devices_cldtl ;
create table "informix".devices_cldtl 
  (
    devices_cldtl_id serial not null ,
    device_id integer not null ,
    cl_ser_num integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

