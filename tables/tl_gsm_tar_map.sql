drop table if exists "informix".tl_gsm_tar_map ;
create table "informix".tl_gsm_tar_map 
  (
    tariff_class char(4) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    tar_class_code smallint,
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

