drop table if exists "informix".st_mobsms_map ;
create table "informix".st_mobsms_map 
  (
    mobsms_map_ref serial not null ,
    direction_code char(1) not null ,
    destination_code char(7) not null ,
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

