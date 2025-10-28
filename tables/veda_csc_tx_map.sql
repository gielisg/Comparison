drop table if exists "informix".veda_csc_tx_map ;
create table "informix".veda_csc_tx_map 
  (
    veda_csc_map_ref serial not null ,
    csc_prod_code varchar(16) not null ,
    channel_code char(2) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

