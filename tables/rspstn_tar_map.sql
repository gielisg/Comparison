drop table if exists "informix".rspstn_tar_map ;
create table "informix".rspstn_tar_map 
  (
    calltype integer not null ,
    carrierid char(1) 
        default '*' not null ,
    rate_id integer 
        default 999999999 not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    map_priority integer,
    tar_class_code smallint,
    rate_method char(10),
    rateid_offset integer,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

