drop table if exists "informix".tiab_cdr_map ;
create table "informix".tiab_cdr_map 
  (
    tiab_map_ref serial not null ,
    charge_type varchar(50) not null ,
    map_wefr datetime year to second,
    map_weto datetime year to second,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

