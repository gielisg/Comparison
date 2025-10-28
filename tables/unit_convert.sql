drop table if exists "informix".unit_convert ;
create table "informix".unit_convert 
  (
    tar_class_code smallint not null ,
    source_unit char(1),
    conversion_type varchar(16) not null ,
    conversion_rate integer not null ,
    comment varchar(255) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

