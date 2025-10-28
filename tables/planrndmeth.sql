drop table if exists "informix".planrndmeth ;
create table "informix".planrndmeth 
  (
    plan_code smallint not null ,
    planrndwefr datetime year to second 
        default current year to second not null ,
    planrndweto datetime year to second not null ,
    rnd_meth_code char(2) not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

