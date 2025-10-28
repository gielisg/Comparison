drop table if exists "informix".paycollstathist ;
create table "informix".paycollstathist 
  (
    paycollhistref serial not null ,
    paycollrunref integer not null ,
    paycollstatcode char(4),
    paycollhistwefr datetime year to second not null ,
    paycollhistweto datetime year to second,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

