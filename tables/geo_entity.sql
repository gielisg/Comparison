drop table if exists "informix".geo_entity ;
create table "informix".geo_entity 
  (
    geo_entity_ref serial not null ,
    foreign_id varchar(128),
    geo_cat_code char(2) not null ,
    geo_type_code char(2),
    geo_entity_narr varchar(128) not null ,
    stat_wefr date not null ,
    stat_weto date not null ,
    tar_class_code smallint,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

