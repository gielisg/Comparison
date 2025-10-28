drop table if exists "informix".vodaily_cdr_map ;
create table "informix".vodaily_cdr_map 
  (
    vodaily_map_ref serial not null ,
    trans_code varchar(6) not null ,
    tariff_code char(5) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

