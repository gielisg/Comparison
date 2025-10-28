drop table if exists "informix".service_status ;
create table "informix".service_status 
  (
    log_entry_id serial not null ,
    service_id varchar(32),
    status_chg_tm datetime year to second not null ,
    updated_tm datetime year to second not null ,
    update_interval integer not null ,
    service_status char(10) not null ,
    narrative varchar(254) not null 
  );

