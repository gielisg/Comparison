drop table if exists "informix".plan_cl_type ;
create table "informix".plan_cl_type 
  (
    tariff_num integer not null ,
    tar_class_code smallint not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

