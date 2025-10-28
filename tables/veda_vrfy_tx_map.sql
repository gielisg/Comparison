drop table if exists "informix".veda_vrfy_tx_map ;
create table "informix".veda_vrfy_tx_map 
  (
    vrfy_tx_map_ref serial not null ,
    verify_srvc_id char(5) not null ,
    bus_unit_code char(2) 
        default '24',
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    rate_method char(10) not null ,
    tar_class_code smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

