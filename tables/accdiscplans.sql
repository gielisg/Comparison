drop table if exists "informix".accdiscplans ;
create table "informix".accdiscplans 
  (
    disc_ref serial not null ,
    debtor_code char(10) not null ,
    plan_wef date 
        default today not null ,
    plan_wet date 
        default  '01/01/9999' not null ,
    plan_code char(2) not null ,
    last_used date,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

