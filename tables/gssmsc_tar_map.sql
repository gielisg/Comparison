drop table if exists "informix".gssmsc_tar_map ;
create table "informix".gssmsc_tar_map 
  (
    nt_call_type smallint not null ,
    map_wefr datetime year to second not null ,
    tar_class_code smallint not null ,
    map_weto datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

