drop table if exists "informix".packgeo ;
create table "informix".packgeo 
  (
    packgeo_ref serial not null ,
    pkg_code integer not null ,
    option smallint not null ,
    geo_cat_code char(2) not null ,
    geo_entity_ref integer,
    geo_type_code char(2),
    stat_wefr date not null ,
    stat_weto date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

