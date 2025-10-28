drop table if exists "informix".netsip_cdr_map ;
create table "informix".netsip_cdr_map 
  (
    ns_map_ref serial not null ,
    rate_plan varchar(30) not null ,
    cl_direction varchar(30) not null ,
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

