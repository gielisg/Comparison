drop table if exists "informix".pactel_cdr_map ;
create table "informix".pactel_cdr_map 
  (
    pactel_map_ref serial not null ,
    service_name varchar(20) not null ,
    description varchar(120) not null ,
    map_wefr date not null ,
    map_weto date not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

