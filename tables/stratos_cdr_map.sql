drop table if exists "informix".stratos_cdr_map ;
create table "informix".stratos_cdr_map 
  (
    stratos_map_ref serial not null ,
    rat_call_type char(5) not null ,
    rat_call_type_desc varchar(100),
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

