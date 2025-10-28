drop table if exists "informix".plan_code ;
create table "informix".plan_code 
  (
    plan_code smallint not null ,
    nt_or_sp char(1) not null ,
    plan_narr char(32),
    tax_exempt char(1) 
        default 'N' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (tax_exempt IN ('Y' ,'N' )) constraint "informix".yes_no
  );

