drop table if exists "informix".optb_cdr_map ;
create table "informix".optb_cdr_map 
  (
    optb_map_ref serial not null ,
    call_type_code varchar(8) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    call_rate_code char(2) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

