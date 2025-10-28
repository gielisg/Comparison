drop table if exists "informix".collectplans ;
create table "informix".collectplans 
  (
    plan_code char(5) not null ,
    plan_narr varchar(32) not null ,
    triggerdays integer not null ,
    col_plan_type char(1) 
        default 'B' not null ,
    col_plan_order integer 
        default 1 not null ,
    col_plan_default char(1) 
        default 'N' not null ,
    col_plan_display char(1) 
        default 'Y' not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (col_plan_type IN ('B' ,'L' ,'E' )) constraint "informix".plan_type2,
    
    check (col_plan_default IN ('Y' ,'N' )) constraint "informix".yes_no
    
    check (col_plan_display IN ('Y' ,'N' )) constraint "informix".yes_no
  );

