drop table if exists "informix".mac_range ;
create table "informix".mac_range 
  (
    mac_range_id serial not null ,
    mac_addr_start varchar(20) not null ,
    mac_addr_end varchar(20) not null ,
    mac_start_dt datetime year to second 
        default current year to second not null ,
    mac_end_dt datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    status_id integer 
        default 0 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

