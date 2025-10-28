drop table if exists "informix".tel_voice_map ;
create table "informix".tel_voice_map 
  (
    tel_voice_map_ref serial not null ,
    direction varchar(20) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

