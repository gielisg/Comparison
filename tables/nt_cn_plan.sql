drop table if exists "informix".nt_cn_plan ;
create table "informix".nt_cn_plan 
  (
    nt_cn_ref integer not null ,
    plan_code smallint not null ,
    nt_plan_start datetime year to second not null ,
    nt_connected datetime year to second not null ,
    phone_num varchar(64) not null ,
    nt_plan_stop datetime year to second not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

