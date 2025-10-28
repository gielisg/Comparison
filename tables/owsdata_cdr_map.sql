drop table if exists "informix".owsdata_cdr_map ;
create table "informix".owsdata_cdr_map 
  (
    owsdata_map_ref serial not null ,
    record_type char(2) not null ,
    call_type char(1) not null ,
    call_type_narr varchar(80),
    data_chg_method char(1) not null ,
    datachgmeth_narr varchar(80),
    direction_fl char(1) not null ,
    directionfl_narr varchar(80),
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

