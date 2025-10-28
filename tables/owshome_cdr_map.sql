drop table if exists "informix".owshome_cdr_map ;
create table "informix".owshome_cdr_map 
  (
    owshome_map_ref serial not null ,
    record_type char(2) not null ,
    call_type char(1) not null ,
    call_type_narr varchar(80),
    gsm_serv_type char(1) not null ,
    gsmservtype_narr varchar(80),
    call_direction char(1) not null ,
    calldirect_narr varchar(80),
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    prod_plan_cd varchar(5),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

