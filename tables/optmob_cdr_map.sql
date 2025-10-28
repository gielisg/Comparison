drop table if exists "informix".optmob_cdr_map ;
create table "informix".optmob_cdr_map 
  (
    optmob_map_ref serial not null ,
    usage_id varchar(80) not null ,
    usage_desc varchar(120) not null ,
    promotion_id varchar(10),
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

