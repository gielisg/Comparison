drop table if exists "informix".vfgdsp_cdr_map ;
create table "informix".vfgdsp_cdr_map 
  (
    customer_code varchar(80) not null ,
    vf_opco_code varchar(10) not null ,
    serving_opco varchar(120) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

