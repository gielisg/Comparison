drop table if exists "informix".credconthiststep ;
create table "informix".credconthiststep 
  (
    credconthistid integer not null ,
    ccstepseqn integer not null ,
    plan_code char(5) not null ,
    ccrunid integer not null ,
    cchiststepdatm datetime year to second 
        default current year to second not null ,
    cchiststepbal decimal(10,2),
    cchiststepbldatm datetime year to second not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

