drop table if exists "informix".symbob_cdr_map ;
create table "informix".symbob_cdr_map 
  (
    symbob_map_ref serial not null ,
    call_type_id varchar(5),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method varchar(20),
    override_desc varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

