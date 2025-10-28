drop table if exists "informix".wtrbtcdr_tar_map ;
create table "informix".wtrbtcdr_tar_map 
  (
    tariff_id integer not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    parent_id integer not null ,
    if_group char(1),
    tar_class_code smallint,
    rate_method char(10),
    override_desc varchar(32),
    tariff_desc varchar(250),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

