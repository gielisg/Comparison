drop table if exists "informix".owsfixed_cdr_map ;
create table "informix".owsfixed_cdr_map 
  (
    owsfixed_map_ref serial not null ,
    record_type char(2) not null ,
    call_type char(1) not null ,
    call_type_narr varchar(80),
    call_direction char(1) not null ,
    calldirect_narr varchar(80),
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

