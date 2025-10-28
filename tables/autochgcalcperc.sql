drop table if exists "informix".autochgcalcperc ;
create table "informix".autochgcalcperc 
  (
    autochgcalcid integer not null ,
    autochgcalcperc decimal(5,2) not null ,
    autochgthreshold decimal(10,2) 
        default 0.00 not null ,
    last_updated datetime year to second 
        default current year to second not null ,
    updated_by varchar(18,10) 
        default user not null 
  );

