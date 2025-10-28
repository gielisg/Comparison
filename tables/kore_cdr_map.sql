drop table if exists "informix".kore_cdr_map ;
create table "informix".kore_cdr_map 
  (
    kore_map_ref serial not null ,
    record_type varchar(38) not null ,
    longdis_fl char(1) not null ,
    longdis_type varchar(30) not null ,
    tollfree_fl char(1) not null ,
    sender_type varchar(10) not null ,
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

