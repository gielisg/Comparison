drop table if exists "informix".veda_etrc_tx_map ;
create table "informix".veda_etrc_tx_map 
  (
    etrc_tx_map_ref serial not null ,
    product_code varchar(20) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint not null ,
    rate_method char(10),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

