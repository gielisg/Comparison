drop table if exists "informix".isp_cdr_map ;
create table "informix".isp_cdr_map 
  (
    call_desc varchar(80) not null ,
    dist_range_desc varchar(50) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    call_desc_narr varchar(250),
    unit_measure_cd varchar(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

