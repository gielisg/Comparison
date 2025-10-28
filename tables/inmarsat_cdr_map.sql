drop table if exists "informix".inmarsat_cdr_map ;
create table "informix".inmarsat_cdr_map 
  (
    inmarsat_map_ref serial not null ,
    call_type varchar(3) not null ,
    call_type_desc varchar(80),
    product_desc varchar(80) not null ,
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

