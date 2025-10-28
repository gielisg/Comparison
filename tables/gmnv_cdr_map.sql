drop table if exists "informix".gmnv_cdr_map ;
create table "informix".gmnv_cdr_map 
  (
    gmnv_map_ref serial not null ,
    record_type varchar(20) not null ,
    partner_name varchar(200) not null ,
    service_code char(2) not null ,
    bparty_prefix varchar(65),
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

