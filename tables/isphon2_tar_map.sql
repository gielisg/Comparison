drop table if exists "informix".isphon2_tar_map ;
create table "informix".isphon2_tar_map 
  (
    isp2_map_ref serial not null ,
    call_destination varchar(64,1) not null ,
    call_description varchar(64,1) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

