drop table if exists "informix".m2_cdr_tar_map ;
create table "informix".m2_cdr_tar_map 
  (
    m2cdr_map_ref serial not null ,
    tariff_id integer not null ,
    description varchar(128),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    tariff_desc varchar(250),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

