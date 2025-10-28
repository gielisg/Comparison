drop table if exists "informix".range_tar_map ;
create table "informix".range_tar_map 
  (
    rangetype char(10) not null ,
    range_from decimal(22,4) 
        default 0.0000 not null ,
    range_to decimal(22,4) 
        default 0.0000 not null ,
    map_wefr datetime year to second 
        default  datetime (1990-01-01 00:00:00) year to second not null ,
    map_weto datetime year to second 
        default  datetime (9999-01-01 00:00:00) year to second not null ,
    tar_class_code smallint not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

