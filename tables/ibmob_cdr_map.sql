drop table if exists "informix".ibmob_cdr_map ;
create table "informix".ibmob_cdr_map 
  (
    ibmob_map_ref serial not null ,
    record_type varchar(30) not null ,
    call_group varchar(100) not null ,
    call_desc varchar(100) not null ,
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

