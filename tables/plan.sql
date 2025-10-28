drop table if exists "informix".plan ;
create table "informix".plan 
  (
    plan_ser_num serial not null ,
    plan_code smallint not null ,
    start_date date not null ,
    end_date date not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

