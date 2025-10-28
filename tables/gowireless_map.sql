drop table if exists "informix".gowireless_map ;
create table "informix".gowireless_map 
  (
    gowireless_map_ref serial not null ,
    usage_direction char(1) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second 
        default current year to second not null ,
    tar_class_code smallint,
    override_desc varchar(64),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (usage_direction IN ('U' ,'D' )) constraint "informix".usage_direction
  );

