drop table if exists "informix".nt_alias ;
create table "informix".nt_alias 
  (
    plan_code smallint not null ,
    nt_plan_alias char(1) not null ,
    nt_plan_narr char(32) not null ,
    nt_plan_name varchar(32),
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

