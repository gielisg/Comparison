drop table if exists "informix".discplans ;
create table "informix".discplans 
  (
    plan_code char(2) not null ,
    plan_narr varchar(32) not null ,
    dflt_disc_perc decimal(5,2) 
        default 0.00 not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

