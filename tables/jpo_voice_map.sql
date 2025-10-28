drop table if exists "informix".jpo_voice_map ;
create table "informix".jpo_voice_map 
  (
    jpov_map_ref serial not null ,
    serv_type varchar(50) not null ,
    rate_plan_id varchar(20) not null ,
    rate_zone_id varchar(20) not null ,
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

