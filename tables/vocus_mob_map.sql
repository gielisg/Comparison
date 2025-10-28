drop table if exists "informix".vocus_mob_map ;
create table "informix".vocus_mob_map 
  (
    vocus_map_ref serial not null ,
    call_type char(2) not null ,
    call_subtype_desc varchar(100) not null ,
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

