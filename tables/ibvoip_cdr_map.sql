drop table if exists "informix".ibvoip_cdr_map ;
create table "informix".ibvoip_cdr_map 
  (
    ibvoip_map_ref serial not null ,
    call_direction varchar(30) not null ,
    call_type varchar(80) not null ,
    call_desc varchar(100) not null ,
    dist_range_desc varchar(100) not null ,
    map_wefr datetime year to second not null ,
    map_weto varchar(20) not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

