drop table if exists "informix".tata_cdr_map ;
create table "informix".tata_cdr_map 
  (
    tata_map_ref serial not null ,
    call_direction varchar(20) not null ,
    transport varchar(20,8) not null ,
    media_type varchar(20,5) not null ,
    parti_country varchar(120) not null ,
    dial_access_type varchar(120) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(50),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

