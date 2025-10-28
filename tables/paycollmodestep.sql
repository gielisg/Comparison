drop table if exists "informix".paycollmodestep ;
create table "informix".paycollmodestep 
  (
    paycollconfcode char(4) not null ,
    paycollmodecode char(1) not null ,
    pcstepconfcode char(4) not null ,
    paycollstepseq integer not null ,
    created_tm datetime year to second 
        default current year to second not null ,
    created_by varchar(18,10) 
        default user not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

