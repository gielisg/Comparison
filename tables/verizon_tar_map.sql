drop table if exists "informix".verizon_tar_map ;
create table "informix".verizon_tar_map 
  (
    point_class decimal(10,0) not null ,
    map_wefr datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

