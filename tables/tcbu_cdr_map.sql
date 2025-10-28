drop table if exists "informix".tcbu_cdr_map ;
create table "informix".tcbu_cdr_map 
  (
    product varchar(200) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

