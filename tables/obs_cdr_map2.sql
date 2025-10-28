drop table if exists "informix".obs_cdr_map2 ;
create table "informix".obs_cdr_map2 
  (
    obscdr_map2_ref serial not null ,
    call_type_code varchar(10) not null ,
    prod_bill_id varchar(10) not null ,
    period_desc varchar(10) not null ,
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

