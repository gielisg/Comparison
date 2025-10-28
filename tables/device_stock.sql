drop table if exists "informix".device_stock ;
create table "informix".device_stock 
  (
    dev_stock_id serial not null ,
    device_id integer not null ,
    from_dt datetime year to second 
        default current year to second not null ,
    to_dt datetime year to second,
    status_id integer,
    serial_num varchar(254),
    warranty date,
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

