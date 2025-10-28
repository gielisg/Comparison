drop table if exists "informix".acccollectplans ;
create table "informix".acccollectplans 
  (
    plan_ref serial not null ,
    debtor_code char(10) not null ,
    plan_type char(1) not null ,
    plan_wef date 
        default today not null ,
    plan_wet date 
        default  '01/01/9999' not null ,
    plan_code char(5) not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null ,
    
    check (plan_type IN ('L' ,'C' ,'E' )) constraint "informix".plan_type
  );

