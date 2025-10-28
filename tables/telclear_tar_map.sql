drop table if exists "informix".telclear_tar_map ;
create table "informix".telclear_tar_map 
  (
    call_type char(6) not null ,
    map_wefr datetime year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    tar_class_code smallint,
    rate_method char(10),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

