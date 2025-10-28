drop table if exists "informix".itw_cdr_map ;
create table "informix".itw_cdr_map 
  (
    itwcdr_map_ref serial not null ,
    bill_type_key varchar(120,12) not null ,
    bill_type_key_desc varchar(200),
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

