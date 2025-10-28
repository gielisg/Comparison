drop table if exists "informix".people_tar_map ;
create table "informix".people_tar_map 
  (
    class_code char(6) not null ,
    carrier char(3) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

