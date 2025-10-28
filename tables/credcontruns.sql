drop table if exists "informix".credcontruns ;
create table "informix".credcontruns 
  (
    ccrunid serial not null ,
    plan_code char(5) not null ,
    ccstepseqn integer not null ,
    ccrunsdatm datetime year to second 
        default current year to second not null ,
    ccrunsproccnt integer,
    ccrunsskipcnt integer,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

