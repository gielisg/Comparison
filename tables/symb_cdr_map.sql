drop table if exists "informix".symb_cdr_map ;
create table "informix".symb_cdr_map 
  (
    symb_cdrm_ref serial not null ,
    tar_class_code smallint,
    pair_category varchar(100) not null ,
    cl_direction varchar(80) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

